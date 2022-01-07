
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int slab_buffer; } ;
struct dm_buffer {scalar_t__ stack_len; int data; int data_mode; struct dm_bufio_client* c; } ;
typedef int gfp_t ;


 int alloc_buffer_data (struct dm_bufio_client*,int ,int *) ;
 struct dm_buffer* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct dm_buffer*) ;

__attribute__((used)) static struct dm_buffer *alloc_buffer(struct dm_bufio_client *c, gfp_t gfp_mask)
{
 struct dm_buffer *b = kmem_cache_alloc(c->slab_buffer, gfp_mask);

 if (!b)
  return ((void*)0);

 b->c = c;

 b->data = alloc_buffer_data(c, gfp_mask, &b->data_mode);
 if (!b->data) {
  kmem_cache_free(c->slab_buffer, b);
  return ((void*)0);
 }




 return b;
}
