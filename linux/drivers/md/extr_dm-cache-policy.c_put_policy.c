
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy_type {int owner; } ;


 int module_put (int ) ;

__attribute__((used)) static void put_policy(struct dm_cache_policy_type *t)
{
 module_put(t->owner);
}
