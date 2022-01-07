
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_controller {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __devm_mbox_controller_unregister ;
 int devres_add (struct device*,struct mbox_controller**) ;
 struct mbox_controller** devres_alloc (int ,int,int ) ;
 int devres_free (struct mbox_controller**) ;
 int mbox_controller_register (struct mbox_controller*) ;

int devm_mbox_controller_register(struct device *dev,
      struct mbox_controller *mbox)
{
 struct mbox_controller **ptr;
 int err;

 ptr = devres_alloc(__devm_mbox_controller_unregister, sizeof(*ptr),
      GFP_KERNEL);
 if (!ptr)
  return -ENOMEM;

 err = mbox_controller_register(mbox);
 if (err < 0) {
  devres_free(ptr);
  return err;
 }

 devres_add(dev, ptr);
 *ptr = mbox;

 return 0;
}
