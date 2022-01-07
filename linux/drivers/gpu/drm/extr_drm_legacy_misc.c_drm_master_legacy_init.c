
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock_queue; int spinlock; } ;
struct drm_master {TYPE_1__ lock; } ;


 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;

void drm_master_legacy_init(struct drm_master *master)
{
 spin_lock_init(&master->lock.spinlock);
 init_waitqueue_head(&master->lock.lock_queue);
}
