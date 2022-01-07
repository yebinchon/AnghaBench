
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int dummy; } ;
struct dm_buffer {int dummy; } ;
struct blk_plug {int dummy; } ;
typedef int sector_t ;


 int BUG_ON (int ) ;
 int LIST_HEAD (int ) ;
 int NF_PREFETCH ;
 int REQ_OP_READ ;
 struct dm_buffer* __bufio_new (struct dm_bufio_client*,int ,int ,int*,int *) ;
 int __flush_write_list (int *) ;
 int blk_finish_plug (struct blk_plug*) ;
 int blk_start_plug (struct blk_plug*) ;
 int cond_resched () ;
 int dm_bufio_in_request () ;
 int dm_bufio_lock (struct dm_bufio_client*) ;
 int dm_bufio_release (struct dm_buffer*) ;
 int dm_bufio_unlock (struct dm_bufio_client*) ;
 int list_empty (int *) ;
 int read_endio ;
 int submit_io (struct dm_buffer*,int ,int ) ;
 scalar_t__ unlikely (int) ;
 int write_list ;

void dm_bufio_prefetch(struct dm_bufio_client *c,
         sector_t block, unsigned n_blocks)
{
 struct blk_plug plug;

 LIST_HEAD(write_list);

 BUG_ON(dm_bufio_in_request());

 blk_start_plug(&plug);
 dm_bufio_lock(c);

 for (; n_blocks--; block++) {
  int need_submit;
  struct dm_buffer *b;
  b = __bufio_new(c, block, NF_PREFETCH, &need_submit,
    &write_list);
  if (unlikely(!list_empty(&write_list))) {
   dm_bufio_unlock(c);
   blk_finish_plug(&plug);
   __flush_write_list(&write_list);
   blk_start_plug(&plug);
   dm_bufio_lock(c);
  }
  if (unlikely(b != ((void*)0))) {
   dm_bufio_unlock(c);

   if (need_submit)
    submit_io(b, REQ_OP_READ, read_endio);
   dm_bufio_release(b);

   cond_resched();

   if (!n_blocks)
    goto flush_plug;
   dm_bufio_lock(c);
  }
 }

 dm_bufio_unlock(c);

flush_plug:
 blk_finish_plug(&plug);
}
