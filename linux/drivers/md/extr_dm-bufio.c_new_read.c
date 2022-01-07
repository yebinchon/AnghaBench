
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int dummy; } ;
struct dm_buffer {int hold_count; void* data; scalar_t__ read_error; int state; } ;
typedef int sector_t ;
typedef enum new_flag { ____Placeholder_new_flag } new_flag ;


 int B_READING ;
 void* ERR_PTR (int) ;
 int LIST_HEAD (int ) ;
 int REQ_OP_READ ;
 int TASK_UNINTERRUPTIBLE ;
 struct dm_buffer* __bufio_new (struct dm_bufio_client*,int ,int,int*,int *) ;
 int __flush_write_list (int *) ;
 int blk_status_to_errno (scalar_t__) ;
 int buffer_record_stack (struct dm_buffer*) ;
 int dm_bufio_lock (struct dm_bufio_client*) ;
 int dm_bufio_release (struct dm_buffer*) ;
 int dm_bufio_unlock (struct dm_bufio_client*) ;
 int read_endio ;
 int submit_io (struct dm_buffer*,int ,int ) ;
 int wait_on_bit_io (int *,int ,int ) ;
 int write_list ;

__attribute__((used)) static void *new_read(struct dm_bufio_client *c, sector_t block,
        enum new_flag nf, struct dm_buffer **bp)
{
 int need_submit;
 struct dm_buffer *b;

 LIST_HEAD(write_list);

 dm_bufio_lock(c);
 b = __bufio_new(c, block, nf, &need_submit, &write_list);




 dm_bufio_unlock(c);

 __flush_write_list(&write_list);

 if (!b)
  return ((void*)0);

 if (need_submit)
  submit_io(b, REQ_OP_READ, read_endio);

 wait_on_bit_io(&b->state, B_READING, TASK_UNINTERRUPTIBLE);

 if (b->read_error) {
  int error = blk_status_to_errno(b->read_error);

  dm_bufio_release(b);

  return ERR_PTR(error);
 }

 *bp = b;

 return b->data;
}
