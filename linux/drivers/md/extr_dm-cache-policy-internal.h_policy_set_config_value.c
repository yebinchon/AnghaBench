
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy {int (* set_config_value ) (struct dm_cache_policy*,char const*,char const*) ;} ;


 int EINVAL ;
 int stub1 (struct dm_cache_policy*,char const*,char const*) ;

__attribute__((used)) static inline int policy_set_config_value(struct dm_cache_policy *p,
       const char *key, const char *value)
{
 return p->set_config_value ? p->set_config_value(p, key, value) : -EINVAL;
}
