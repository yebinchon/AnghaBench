
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table_bucket {int head; } ;
struct dm_clone_region_hydration {int h; } ;


 int hlist_add_head (int *,int *) ;

__attribute__((used)) static inline void __insert_region_hydration(struct hash_table_bucket *bucket,
          struct dm_clone_region_hydration *hd)
{
 hlist_add_head(&hd->h, &bucket->head);
}
