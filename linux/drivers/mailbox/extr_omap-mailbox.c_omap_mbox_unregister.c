
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox_device {struct omap_mbox** mboxes; int elem; } ;
struct omap_mbox {int dev; } ;


 int EINVAL ;
 int device_unregister (int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap_mbox_devices_lock ;

__attribute__((used)) static int omap_mbox_unregister(struct omap_mbox_device *mdev)
{
 int i;
 struct omap_mbox **mboxes;

 if (!mdev || !mdev->mboxes)
  return -EINVAL;

 mutex_lock(&omap_mbox_devices_lock);
 list_del(&mdev->elem);
 mutex_unlock(&omap_mbox_devices_lock);

 mboxes = mdev->mboxes;
 for (i = 0; mboxes[i]; i++)
  device_unregister(mboxes[i]->dev);
 return 0;
}
