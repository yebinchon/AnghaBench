
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct dm_bufio_client {int* n_buffers; } ;


 int DM_BUFIO_WRITEBACK_RATIO ;
 size_t LIST_CLEAN ;
 size_t LIST_DIRTY ;
 int __write_dirty_buffers_async (struct dm_bufio_client*,int,struct list_head*) ;

__attribute__((used)) static void __check_watermark(struct dm_bufio_client *c,
         struct list_head *write_list)
{
 if (c->n_buffers[LIST_DIRTY] > c->n_buffers[LIST_CLEAN] * DM_BUFIO_WRITEBACK_RATIO)
  __write_dirty_buffers_async(c, 1, write_list);
}
