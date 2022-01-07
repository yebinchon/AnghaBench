
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy_type {int dummy; } ;


 scalar_t__ IS_ERR (struct dm_cache_policy_type*) ;
 struct dm_cache_policy_type* get_policy_once (char const*) ;
 int request_module (char*,char const*) ;

__attribute__((used)) static struct dm_cache_policy_type *get_policy(const char *name)
{
 struct dm_cache_policy_type *t;

 t = get_policy_once(name);
 if (IS_ERR(t))
  return ((void*)0);

 if (t)
  return t;

 request_module("dm-cache-%s", name);

 t = get_policy_once(name);
 if (IS_ERR(t))
  return ((void*)0);

 return t;
}
