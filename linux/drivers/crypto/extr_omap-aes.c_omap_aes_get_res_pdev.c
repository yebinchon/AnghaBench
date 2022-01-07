
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct omap_aes_dev {int * pdata; } ;


 int ENODEV ;
 int IORESOURCE_MEM ;
 int dev_err (struct device*,char*) ;
 int memcpy (struct resource*,struct resource*,int) ;
 int omap_aes_pdata_omap2 ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int omap_aes_get_res_pdev(struct omap_aes_dev *dd,
  struct platform_device *pdev, struct resource *res)
{
 struct device *dev = &pdev->dev;
 struct resource *r;
 int err = 0;


 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!r) {
  dev_err(dev, "no MEM resource info\n");
  err = -ENODEV;
  goto err;
 }
 memcpy(res, r, sizeof(*res));


 dd->pdata = &omap_aes_pdata_omap2;

err:
 return err;
}
