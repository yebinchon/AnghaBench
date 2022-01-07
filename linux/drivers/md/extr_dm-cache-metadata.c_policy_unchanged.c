
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy {int dummy; } ;
struct dm_cache_metadata {unsigned int const* policy_version; size_t policy_hint_size; int policy_name; } ;


 size_t dm_cache_policy_get_hint_size (struct dm_cache_policy*) ;
 char* dm_cache_policy_get_name (struct dm_cache_policy*) ;
 unsigned int* dm_cache_policy_get_version (struct dm_cache_policy*) ;
 scalar_t__ strncmp (int ,char const*,int) ;

__attribute__((used)) static bool policy_unchanged(struct dm_cache_metadata *cmd,
        struct dm_cache_policy *policy)
{
 const char *policy_name = dm_cache_policy_get_name(policy);
 const unsigned *policy_version = dm_cache_policy_get_version(policy);
 size_t policy_hint_size = dm_cache_policy_get_hint_size(policy);




 if (strncmp(cmd->policy_name, policy_name, sizeof(cmd->policy_name)))
  return 0;




 if (cmd->policy_version[0] != policy_version[0])
  return 0;




 if (cmd->policy_hint_size != policy_hint_size)
  return 0;

 return 1;
}
