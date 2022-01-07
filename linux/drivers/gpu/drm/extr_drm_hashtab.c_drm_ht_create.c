
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_open_hash {unsigned int order; int * table; } ;


 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int array_size (unsigned int,int) ;
 int * kcalloc (unsigned int,int,int ) ;
 int * vzalloc (int ) ;

int drm_ht_create(struct drm_open_hash *ht, unsigned int order)
{
 unsigned int size = 1 << order;

 ht->order = order;
 ht->table = ((void*)0);
 if (size <= PAGE_SIZE / sizeof(*ht->table))
  ht->table = kcalloc(size, sizeof(*ht->table), GFP_KERNEL);
 else
  ht->table = vzalloc(array_size(size, sizeof(*ht->table)));
 if (!ht->table) {
  DRM_ERROR("Out of memory for hash table\n");
  return -ENOMEM;
 }
 return 0;
}
