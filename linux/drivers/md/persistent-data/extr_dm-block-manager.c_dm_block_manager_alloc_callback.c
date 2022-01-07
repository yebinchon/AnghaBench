
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_buffer {int dummy; } ;
struct buffer_aux {int lock; int * validator; } ;


 int bl_init (int *) ;
 struct buffer_aux* dm_bufio_get_aux_data (struct dm_buffer*) ;

__attribute__((used)) static void dm_block_manager_alloc_callback(struct dm_buffer *buf)
{
 struct buffer_aux *aux = dm_bufio_get_aux_data(buf);
 aux->validator = ((void*)0);
 bl_init(&aux->lock);
}
