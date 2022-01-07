
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath {int lock; int flags; } ;
struct dm_target {struct multipath* private; } ;


 int MPATHF_QUEUE_IF_NO_PATH ;
 int MPATHF_SAVED_QUEUE_IF_NO_PATH ;
 int assign_bit (int ,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void multipath_resume(struct dm_target *ti)
{
 struct multipath *m = ti->private;
 unsigned long flags;

 spin_lock_irqsave(&m->lock, flags);
 assign_bit(MPATHF_QUEUE_IF_NO_PATH, &m->flags,
     test_bit(MPATHF_SAVED_QUEUE_IF_NO_PATH, &m->flags));
 spin_unlock_irqrestore(&m->lock, flags);
}
