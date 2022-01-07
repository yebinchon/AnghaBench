
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {scalar_t__ block_size; scalar_t__ sectors_per_block_bits; int * slab_cache; } ;
typedef int gfp_t ;


 unsigned char DATA_MODE_GET_FREE_PAGES ;
 unsigned char DATA_MODE_SLAB ;
 unsigned char DATA_MODE_VMALLOC ;
 scalar_t__ KMALLOC_MAX_SIZE ;
 int PAGE_KERNEL ;
 scalar_t__ PAGE_SHIFT ;
 scalar_t__ SECTOR_SHIFT ;
 int __GFP_NORETRY ;
 scalar_t__ __get_free_pages (int,scalar_t__) ;
 void* __vmalloc (scalar_t__,int,int ) ;
 void* kmem_cache_alloc (int *,int) ;
 int memalloc_noio_restore (unsigned int) ;
 unsigned int memalloc_noio_save () ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void *alloc_buffer_data(struct dm_bufio_client *c, gfp_t gfp_mask,
          unsigned char *data_mode)
{
 if (unlikely(c->slab_cache != ((void*)0))) {
  *data_mode = DATA_MODE_SLAB;
  return kmem_cache_alloc(c->slab_cache, gfp_mask);
 }

 if (c->block_size <= KMALLOC_MAX_SIZE &&
     gfp_mask & __GFP_NORETRY) {
  *data_mode = DATA_MODE_GET_FREE_PAGES;
  return (void *)__get_free_pages(gfp_mask,
      c->sectors_per_block_bits - (PAGE_SHIFT - SECTOR_SHIFT));
 }

 *data_mode = DATA_MODE_VMALLOC;
 if (gfp_mask & __GFP_NORETRY) {
  unsigned noio_flag = memalloc_noio_save();
  void *ptr = __vmalloc(c->block_size, gfp_mask, PAGE_KERNEL);

  memalloc_noio_restore(noio_flag);
  return ptr;
 }

 return __vmalloc(c->block_size, gfp_mask, PAGE_KERNEL);
}
