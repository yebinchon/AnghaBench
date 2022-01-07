
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sham_dev {scalar_t__ err; int flags; int dev; } ;


 int FLAGS_INIT ;
 int dev_err (int ,char*,int) ;
 int pm_runtime_get_sync (int ) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int omap_sham_hw_init(struct omap_sham_dev *dd)
{
 int err;

 err = pm_runtime_get_sync(dd->dev);
 if (err < 0) {
  dev_err(dd->dev, "failed to get sync: %d\n", err);
  return err;
 }

 if (!test_bit(FLAGS_INIT, &dd->flags)) {
  set_bit(FLAGS_INIT, &dd->flags);
  dd->err = 0;
 }

 return 0;
}
