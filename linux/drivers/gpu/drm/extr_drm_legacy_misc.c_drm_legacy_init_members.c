
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int ctxlist_mutex; int buf_lock; int maplist; int vmalist; int ctxlist; } ;


 int INIT_LIST_HEAD (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

void drm_legacy_init_members(struct drm_device *dev)
{
 INIT_LIST_HEAD(&dev->ctxlist);
 INIT_LIST_HEAD(&dev->vmalist);
 INIT_LIST_HEAD(&dev->maplist);
 spin_lock_init(&dev->buf_lock);
 mutex_init(&dev->ctxlist_mutex);
}
