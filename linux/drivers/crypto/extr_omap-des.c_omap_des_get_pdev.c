
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct omap_des_dev {int pdata; } ;



__attribute__((used)) static int omap_des_get_pdev(struct omap_des_dev *dd,
  struct platform_device *pdev)
{

 dd->pdata = pdev->dev.platform_data;

 return 0;
}
