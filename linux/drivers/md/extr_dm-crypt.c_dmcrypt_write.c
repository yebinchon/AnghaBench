
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int rb_node; } ;
struct dm_crypt_io {int rb_node; } ;
struct crypt_config {int write_thread_lock; struct rb_root write_tree; } ;
struct blk_plug {int dummy; } ;


 int BUG_ON (int ) ;
 int RB_EMPTY_ROOT (struct rb_root*) ;
 struct rb_root RB_ROOT ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int blk_finish_plug (struct blk_plug*) ;
 int blk_start_plug (struct blk_plug*) ;
 struct dm_crypt_io* crypt_io_from_node (int ) ;
 int kcryptd_io_write (struct dm_crypt_io*) ;
 int kthread_should_stop () ;
 int rb_erase (int *,struct rb_root*) ;
 int rb_first (struct rb_root*) ;
 int rb_parent (int ) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int dmcrypt_write(void *data)
{
 struct crypt_config *cc = data;
 struct dm_crypt_io *io;

 while (1) {
  struct rb_root write_tree;
  struct blk_plug plug;

  spin_lock_irq(&cc->write_thread_lock);
continue_locked:

  if (!RB_EMPTY_ROOT(&cc->write_tree))
   goto pop_from_list;

  set_current_state(TASK_INTERRUPTIBLE);

  spin_unlock_irq(&cc->write_thread_lock);

  if (unlikely(kthread_should_stop())) {
   set_current_state(TASK_RUNNING);
   break;
  }

  schedule();

  set_current_state(TASK_RUNNING);
  spin_lock_irq(&cc->write_thread_lock);
  goto continue_locked;

pop_from_list:
  write_tree = cc->write_tree;
  cc->write_tree = RB_ROOT;
  spin_unlock_irq(&cc->write_thread_lock);

  BUG_ON(rb_parent(write_tree.rb_node));





  blk_start_plug(&plug);
  do {
   io = crypt_io_from_node(rb_first(&write_tree));
   rb_erase(&io->rb_node, &write_tree);
   kcryptd_io_write(io);
  } while (!RB_EMPTY_ROOT(&write_tree));
  blk_finish_plug(&plug);
 }
 return 0;
}
