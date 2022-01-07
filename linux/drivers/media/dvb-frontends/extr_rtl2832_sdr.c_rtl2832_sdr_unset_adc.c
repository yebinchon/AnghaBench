
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl2832_sdr_dev {int regmap; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;


 int dev_dbg (int *,char*) ;
 int regmap_bulk_write (int ,int,char*,int) ;
 int regmap_write (int ,int,int) ;

__attribute__((used)) static void rtl2832_sdr_unset_adc(struct rtl2832_sdr_dev *dev)
{
 struct platform_device *pdev = dev->pdev;
 int ret;

 dev_dbg(&pdev->dev, "\n");


 ret = regmap_write(dev->regmap, 0x061, 0xe0);
 if (ret)
  goto err;


 ret = regmap_write(dev->regmap, 0x019, 0x20);
 if (ret)
  goto err;

 ret = regmap_bulk_write(dev->regmap, 0x017, "\x11\x10", 2);
 if (ret)
  goto err;


 ret = regmap_bulk_write(dev->regmap, 0x192, "\x00\x0f\xff", 3);
 if (ret)
  goto err;

 ret = regmap_bulk_write(dev->regmap, 0x13e, "\x40\x00", 2);
 if (ret)
  goto err;

 ret = regmap_bulk_write(dev->regmap, 0x115, "\x06\x3f\xce\xcc", 4);
 if (ret)
  goto err;
err:
 return;
}
