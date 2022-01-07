
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_device {int rstc; int dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int ,char*,int) ;
 int devm_reset_control_array_get (int ,int,int) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int panfrost_reset_init(struct panfrost_device *pfdev)
{
 int err;

 pfdev->rstc = devm_reset_control_array_get(pfdev->dev, 0, 1);
 if (IS_ERR(pfdev->rstc)) {
  dev_err(pfdev->dev, "get reset failed %ld\n", PTR_ERR(pfdev->rstc));
  return PTR_ERR(pfdev->rstc);
 }

 err = reset_control_deassert(pfdev->rstc);
 if (err)
  return err;

 return 0;
}
