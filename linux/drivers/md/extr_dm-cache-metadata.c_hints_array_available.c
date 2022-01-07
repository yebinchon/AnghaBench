
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy {int dummy; } ;
struct dm_cache_metadata {scalar_t__ clean_when_opened; } ;


 scalar_t__ hints_array_initialized (struct dm_cache_metadata*) ;
 scalar_t__ policy_unchanged (struct dm_cache_metadata*,struct dm_cache_policy*) ;

__attribute__((used)) static bool hints_array_available(struct dm_cache_metadata *cmd,
      struct dm_cache_policy *policy)
{
 return cmd->clean_when_opened && policy_unchanged(cmd, policy) &&
  hints_array_initialized(cmd);
}
