
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk_iommudata {int iommu; } ;
struct platform_device {int dummy; } ;
struct of_phandle_args {int np; } ;
struct TYPE_2__ {struct rk_iommudata* iommu; } ;
struct device {TYPE_1__ archdata; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct rk_iommudata* devm_kzalloc (int ,int,int ) ;
 int dma_dev ;
 struct platform_device* of_find_device_by_node (int ) ;
 int platform_device_put (struct platform_device*) ;
 int platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int rk_iommu_of_xlate(struct device *dev,
        struct of_phandle_args *args)
{
 struct platform_device *iommu_dev;
 struct rk_iommudata *data;

 data = devm_kzalloc(dma_dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 iommu_dev = of_find_device_by_node(args->np);

 data->iommu = platform_get_drvdata(iommu_dev);
 dev->archdata.iommu = data;

 platform_device_put(iommu_dev);

 return 0;
}
