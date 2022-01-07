
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox_device {int controller; int dev; int elem; struct omap_mbox** mboxes; } ;
struct omap_mbox {int dev; int name; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int device_create (int *,int ,int ,struct omap_mbox*,char*,int ) ;
 int device_unregister (int ) ;
 int devm_mbox_controller_register (int ,int *) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap_mbox_class ;
 int omap_mbox_devices ;
 int omap_mbox_devices_lock ;

__attribute__((used)) static int omap_mbox_register(struct omap_mbox_device *mdev)
{
 int ret;
 int i;
 struct omap_mbox **mboxes;

 if (!mdev || !mdev->mboxes)
  return -EINVAL;

 mboxes = mdev->mboxes;
 for (i = 0; mboxes[i]; i++) {
  struct omap_mbox *mbox = mboxes[i];

  mbox->dev = device_create(&omap_mbox_class, mdev->dev,
     0, mbox, "%s", mbox->name);
  if (IS_ERR(mbox->dev)) {
   ret = PTR_ERR(mbox->dev);
   goto err_out;
  }
 }

 mutex_lock(&omap_mbox_devices_lock);
 list_add(&mdev->elem, &omap_mbox_devices);
 mutex_unlock(&omap_mbox_devices_lock);

 ret = devm_mbox_controller_register(mdev->dev, &mdev->controller);

err_out:
 if (ret) {
  while (i--)
   device_unregister(mboxes[i]->dev);
 }
 return ret;
}
