
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cache_policy_type {struct dm_cache_policy* (* create ) (int ,int ,int ) ;} ;
struct dm_cache_policy {struct dm_cache_policy_type* private; } ;
typedef int sector_t ;
typedef int dm_cblock_t ;


 int DMWARN (char*) ;
 int EINVAL ;
 int ENOMEM ;
 struct dm_cache_policy* ERR_PTR (int ) ;
 struct dm_cache_policy_type* get_policy (char const*) ;
 int put_policy (struct dm_cache_policy_type*) ;
 struct dm_cache_policy* stub1 (int ,int ,int ) ;

struct dm_cache_policy *dm_cache_policy_create(const char *name,
            dm_cblock_t cache_size,
            sector_t origin_size,
            sector_t cache_block_size)
{
 struct dm_cache_policy *p = ((void*)0);
 struct dm_cache_policy_type *type;

 type = get_policy(name);
 if (!type) {
  DMWARN("unknown policy type");
  return ERR_PTR(-EINVAL);
 }

 p = type->create(cache_size, origin_size, cache_block_size);
 if (!p) {
  put_policy(type);
  return ERR_PTR(-ENOMEM);
 }
 p->private = type;

 return p;
}
