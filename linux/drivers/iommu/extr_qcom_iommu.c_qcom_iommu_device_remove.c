
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_iommu_dev {int iommu; } ;
struct platform_device {int dev; } ;


 int bus_set_iommu (int *,int *) ;
 int iommu_device_sysfs_remove (int *) ;
 int iommu_device_unregister (int *) ;
 int platform_bus_type ;
 struct qcom_iommu_dev* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int pm_runtime_force_suspend (int *) ;

__attribute__((used)) static int qcom_iommu_device_remove(struct platform_device *pdev)
{
 struct qcom_iommu_dev *qcom_iommu = platform_get_drvdata(pdev);

 bus_set_iommu(&platform_bus_type, ((void*)0));

 pm_runtime_force_suspend(&pdev->dev);
 platform_set_drvdata(pdev, ((void*)0));
 iommu_device_sysfs_remove(&qcom_iommu->iommu);
 iommu_device_unregister(&qcom_iommu->iommu);

 return 0;
}
