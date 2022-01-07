
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int slab_buffer; } ;
struct dm_buffer {int data_mode; int data; struct dm_bufio_client* c; } ;


 int free_buffer_data (struct dm_bufio_client*,int ,int ) ;
 int kmem_cache_free (int ,struct dm_buffer*) ;

__attribute__((used)) static void free_buffer(struct dm_buffer *b)
{
 struct dm_bufio_client *c = b->c;

 free_buffer_data(c, b->data, b->data_mode);
 kmem_cache_free(c->slab_buffer, b);
}
