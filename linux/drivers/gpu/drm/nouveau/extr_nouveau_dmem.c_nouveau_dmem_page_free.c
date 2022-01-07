
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct nouveau_dmem_chunk* zone_device_data; } ;
struct nouveau_dmem_chunk {unsigned long pfn_first; int lock; int callocated; int bitmap; } ;


 int WARN_ON (int) ;
 int clear_bit (unsigned long,int ) ;
 unsigned long page_to_pfn (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nouveau_dmem_page_free(struct page *page)
{
 struct nouveau_dmem_chunk *chunk = page->zone_device_data;
 unsigned long idx = page_to_pfn(page) - chunk->pfn_first;
 spin_lock(&chunk->lock);
 clear_bit(idx, chunk->bitmap);
 WARN_ON(!chunk->callocated);
 chunk->callocated--;




 spin_unlock(&chunk->lock);
}
