
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy_type {int owner; } ;


 int DMWARN (char*,char const*) ;
 int EINVAL ;
 struct dm_cache_policy_type* ERR_PTR (int ) ;
 struct dm_cache_policy_type* __find_policy (char const*) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct dm_cache_policy_type *__get_policy_once(const char *name)
{
 struct dm_cache_policy_type *t = __find_policy(name);

 if (t && !try_module_get(t->owner)) {
  DMWARN("couldn't get module %s", name);
  t = ERR_PTR(-EINVAL);
 }

 return t;
}
