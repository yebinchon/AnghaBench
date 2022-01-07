
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {scalar_t__ sectors_per_block_bits; int slab_cache; } ;


 int BUG () ;



 int DMCRIT (char*,unsigned char) ;
 scalar_t__ PAGE_SHIFT ;
 scalar_t__ SECTOR_SHIFT ;
 int free_pages (unsigned long,scalar_t__) ;
 int kmem_cache_free (int ,void*) ;
 int vfree (void*) ;

__attribute__((used)) static void free_buffer_data(struct dm_bufio_client *c,
        void *data, unsigned char data_mode)
{
 switch (data_mode) {
 case 129:
  kmem_cache_free(c->slab_cache, data);
  break;

 case 130:
  free_pages((unsigned long)data,
      c->sectors_per_block_bits - (PAGE_SHIFT - SECTOR_SHIFT));
  break;

 case 128:
  vfree(data);
  break;

 default:
  DMCRIT("dm_bufio_free_buffer_data: bad data mode: %d",
         data_mode);
  BUG();
 }
}
