
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct adbdev_state* private_data; } ;
struct adbdev_state {int lock; scalar_t__ inuse; int * completed; int n_pending; } ;


 int adb_mutex ;
 scalar_t__ atomic_read (int *) ;
 int kfree (struct adbdev_state*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int adb_release(struct inode *inode, struct file *file)
{
 struct adbdev_state *state = file->private_data;
 unsigned long flags;

 mutex_lock(&adb_mutex);
 if (state) {
  file->private_data = ((void*)0);
  spin_lock_irqsave(&state->lock, flags);
  if (atomic_read(&state->n_pending) == 0
      && state->completed == ((void*)0)) {
   spin_unlock_irqrestore(&state->lock, flags);
   kfree(state);
  } else {
   state->inuse = 0;
   spin_unlock_irqrestore(&state->lock, flags);
  }
 }
 mutex_unlock(&adb_mutex);
 return 0;
}
