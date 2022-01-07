
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_region_hash {scalar_t__ buckets; } ;
struct dm_region {int key; int hash_list; } ;


 int list_add (int *,scalar_t__) ;
 scalar_t__ rh_hash (struct dm_region_hash*,int ) ;

__attribute__((used)) static void __rh_insert(struct dm_region_hash *rh, struct dm_region *reg)
{
 list_add(&reg->hash_list, rh->buckets + rh_hash(rh, reg->key));
}
