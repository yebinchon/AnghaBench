
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_open_hash {int * table; } ;


 int kvfree (int *) ;

void drm_ht_remove(struct drm_open_hash *ht)
{
 if (ht->table) {
  kvfree(ht->table);
  ht->table = ((void*)0);
 }
}
