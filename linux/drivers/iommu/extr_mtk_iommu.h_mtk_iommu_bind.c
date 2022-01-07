
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_iommu_data {int larb_imu; } ;
struct device {int dummy; } ;


 int component_bind_all (struct device*,int *) ;
 struct mtk_iommu_data* dev_get_drvdata (struct device*) ;

__attribute__((used)) static inline int mtk_iommu_bind(struct device *dev)
{
 struct mtk_iommu_data *data = dev_get_drvdata(dev);

 return component_bind_all(dev, &data->larb_imu);
}
