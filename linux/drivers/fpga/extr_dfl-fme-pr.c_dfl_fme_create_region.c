
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct platform_device {int id; } ;
struct dfl_fme_region_pdata {struct platform_device* br; struct platform_device* mgr; } ;
struct dfl_fme_region {int port_id; TYPE_3__* region; } ;
struct dfl_feature_platform_data {TYPE_1__* dev; } ;
struct device {int dummy; } ;
typedef int region_pdata ;
struct TYPE_8__ {struct device* parent; } ;
struct TYPE_9__ {TYPE_2__ dev; } ;
struct TYPE_7__ {struct device dev; } ;


 int DFL_FPGA_FME_REGION ;
 int ENOMEM ;
 struct dfl_fme_region* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct dfl_fme_region* devm_kzalloc (struct device*,int,int ) ;
 int platform_device_add (TYPE_3__*) ;
 int platform_device_add_data (TYPE_3__*,struct dfl_fme_region_pdata*,int) ;
 TYPE_3__* platform_device_alloc (int ,int ) ;
 int platform_device_put (TYPE_3__*) ;

__attribute__((used)) static struct dfl_fme_region *
dfl_fme_create_region(struct dfl_feature_platform_data *pdata,
        struct platform_device *mgr,
        struct platform_device *br, int port_id)
{
 struct dfl_fme_region_pdata region_pdata;
 struct device *dev = &pdata->dev->dev;
 struct dfl_fme_region *fme_region;
 int ret = -ENOMEM;

 fme_region = devm_kzalloc(dev, sizeof(*fme_region), GFP_KERNEL);
 if (!fme_region)
  return ERR_PTR(ret);

 region_pdata.mgr = mgr;
 region_pdata.br = br;





 fme_region->region = platform_device_alloc(DFL_FPGA_FME_REGION, br->id);
 if (!fme_region->region)
  return ERR_PTR(ret);

 fme_region->region->dev.parent = dev;

 ret = platform_device_add_data(fme_region->region, &region_pdata,
           sizeof(region_pdata));
 if (ret)
  goto create_region_err;

 ret = platform_device_add(fme_region->region);
 if (ret)
  goto create_region_err;

 fme_region->port_id = port_id;

 return fme_region;

create_region_err:
 platform_device_put(fme_region->region);
 return ERR_PTR(ret);
}
