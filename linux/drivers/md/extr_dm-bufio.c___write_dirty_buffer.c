
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct dm_buffer {int write_list; int dirty_end; int write_end; int dirty_start; int write_start; int state; } ;


 int B_DIRTY ;
 int B_WRITING ;
 int REQ_OP_WRITE ;
 int TASK_UNINTERRUPTIBLE ;
 int clear_bit (int ,int *) ;
 int list_add_tail (int *,struct list_head*) ;
 int submit_io (struct dm_buffer*,int ,int ) ;
 int test_bit (int ,int *) ;
 int wait_on_bit_lock_io (int *,int ,int ) ;
 int write_endio ;

__attribute__((used)) static void __write_dirty_buffer(struct dm_buffer *b,
     struct list_head *write_list)
{
 if (!test_bit(B_DIRTY, &b->state))
  return;

 clear_bit(B_DIRTY, &b->state);
 wait_on_bit_lock_io(&b->state, B_WRITING, TASK_UNINTERRUPTIBLE);

 b->write_start = b->dirty_start;
 b->write_end = b->dirty_end;

 if (!write_list)
  submit_io(b, REQ_OP_WRITE, write_endio);
 else
  list_add_tail(&b->write_list, write_list);
}
