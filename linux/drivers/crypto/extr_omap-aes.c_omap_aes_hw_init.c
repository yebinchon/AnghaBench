
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_aes_dev {int flags; int dev; scalar_t__ err; } ;


 int FLAGS_INIT ;
 int dev_err (int ,char*,int) ;
 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static int omap_aes_hw_init(struct omap_aes_dev *dd)
{
 int err;

 if (!(dd->flags & FLAGS_INIT)) {
  dd->flags |= FLAGS_INIT;
  dd->err = 0;
 }

 err = pm_runtime_get_sync(dd->dev);
 if (err < 0) {
  dev_err(dd->dev, "failed to get sync: %d\n", err);
  return err;
 }

 return 0;
}
