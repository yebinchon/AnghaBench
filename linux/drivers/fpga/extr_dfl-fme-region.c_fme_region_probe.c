
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct fpga_region {int compat_id; struct dfl_fme_region_pdata* priv; } ;
struct fpga_manager {int compat_id; } ;
struct dfl_fme_region_pdata {TYPE_1__* mgr; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (struct fpga_manager*) ;
 int dev_dbg (struct device*,char*) ;
 struct dfl_fme_region_pdata* dev_get_platdata (struct device*) ;
 struct fpga_region* devm_fpga_region_create (struct device*,struct fpga_manager*,int ) ;
 int fme_region_get_bridges ;
 struct fpga_manager* fpga_mgr_get (int *) ;
 int fpga_mgr_put (struct fpga_manager*) ;
 int fpga_region_register (struct fpga_region*) ;
 int platform_set_drvdata (struct platform_device*,struct fpga_region*) ;

__attribute__((used)) static int fme_region_probe(struct platform_device *pdev)
{
 struct dfl_fme_region_pdata *pdata = dev_get_platdata(&pdev->dev);
 struct device *dev = &pdev->dev;
 struct fpga_region *region;
 struct fpga_manager *mgr;
 int ret;

 mgr = fpga_mgr_get(&pdata->mgr->dev);
 if (IS_ERR(mgr))
  return -EPROBE_DEFER;

 region = devm_fpga_region_create(dev, mgr, fme_region_get_bridges);
 if (!region) {
  ret = -ENOMEM;
  goto eprobe_mgr_put;
 }

 region->priv = pdata;
 region->compat_id = mgr->compat_id;
 platform_set_drvdata(pdev, region);

 ret = fpga_region_register(region);
 if (ret)
  goto eprobe_mgr_put;

 dev_dbg(dev, "DFL FME FPGA Region probed\n");

 return 0;

eprobe_mgr_put:
 fpga_mgr_put(mgr);
 return ret;
}
