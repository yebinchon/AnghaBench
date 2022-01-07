
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_buffer {int state; int hold_count; } ;


 int BUG_ON (int ) ;
 int B_READING ;
 int B_WRITING ;
 int TASK_UNINTERRUPTIBLE ;
 int __write_dirty_buffer (struct dm_buffer*,int *) ;
 int wait_on_bit_io (int *,int ,int ) ;

__attribute__((used)) static void __make_buffer_clean(struct dm_buffer *b)
{
 BUG_ON(b->hold_count);

 if (!b->state)
  return;

 wait_on_bit_io(&b->state, B_READING, TASK_UNINTERRUPTIBLE);
 __write_dirty_buffer(b, ((void*)0));
 wait_on_bit_io(&b->state, B_WRITING, TASK_UNINTERRUPTIBLE);
}
