
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_buffer {TYPE_1__* c; } ;
struct TYPE_2__ {int block_size; } ;


 int dm_bufio_mark_partial_buffer_dirty (struct dm_buffer*,int ,int ) ;

void dm_bufio_mark_buffer_dirty(struct dm_buffer *b)
{
 dm_bufio_mark_partial_buffer_dirty(b, 0, b->c->block_size);
}
