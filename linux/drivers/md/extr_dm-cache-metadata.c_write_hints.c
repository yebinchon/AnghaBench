
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy {int dummy; } ;
struct dm_cache_metadata {size_t policy_hint_size; int cache_blocks; scalar_t__ hint_root; int hint_info; int policy_version; int policy_name; } ;


 int EINVAL ;
 int dm_array_del (int *,scalar_t__) ;
 int dm_array_new (int *,scalar_t__*,int ,int ,struct dm_cache_policy*) ;
 size_t dm_cache_policy_get_hint_size (struct dm_cache_policy*) ;
 char* dm_cache_policy_get_name (struct dm_cache_policy*) ;
 unsigned int* dm_cache_policy_get_version (struct dm_cache_policy*) ;
 int from_cblock (int ) ;
 int get_hint ;
 int memcpy (int ,unsigned int const*,int) ;
 int strlen (char const*) ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static int write_hints(struct dm_cache_metadata *cmd, struct dm_cache_policy *policy)
{
 int r;
 size_t hint_size;
 const char *policy_name = dm_cache_policy_get_name(policy);
 const unsigned *policy_version = dm_cache_policy_get_version(policy);

 if (!policy_name[0] ||
     (strlen(policy_name) > sizeof(cmd->policy_name) - 1))
  return -EINVAL;

 strncpy(cmd->policy_name, policy_name, sizeof(cmd->policy_name));
 memcpy(cmd->policy_version, policy_version, sizeof(cmd->policy_version));

 hint_size = dm_cache_policy_get_hint_size(policy);
 if (!hint_size)
  return 0;
 cmd->policy_hint_size = hint_size;

 if (cmd->hint_root) {
  r = dm_array_del(&cmd->hint_info, cmd->hint_root);
  if (r)
   return r;
 }

 return dm_array_new(&cmd->hint_info, &cmd->hint_root,
       from_cblock(cmd->cache_blocks),
       get_hint, policy);
}
