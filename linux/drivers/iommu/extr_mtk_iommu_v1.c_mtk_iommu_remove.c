
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mtk_iommu_data {int irq; int bclk; int iommu; } ;


 int bus_set_iommu (int *,int *) ;
 int clk_disable_unprepare (int ) ;
 int component_master_del (int *,int *) ;
 int devm_free_irq (int *,int ,struct mtk_iommu_data*) ;
 int iommu_device_sysfs_remove (int *) ;
 int iommu_device_unregister (int *) ;
 scalar_t__ iommu_present (int *) ;
 int mtk_iommu_com_ops ;
 int platform_bus_type ;
 struct mtk_iommu_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mtk_iommu_remove(struct platform_device *pdev)
{
 struct mtk_iommu_data *data = platform_get_drvdata(pdev);

 iommu_device_sysfs_remove(&data->iommu);
 iommu_device_unregister(&data->iommu);

 if (iommu_present(&platform_bus_type))
  bus_set_iommu(&platform_bus_type, ((void*)0));

 clk_disable_unprepare(data->bclk);
 devm_free_irq(&pdev->dev, data->irq, data);
 component_master_del(&pdev->dev, &mtk_iommu_com_ops);
 return 0;
}
