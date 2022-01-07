
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_iommu_dev {int iface_clk; int dev; int bus_clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int qcom_iommu_enable_clocks(struct qcom_iommu_dev *qcom_iommu)
{
 int ret;

 ret = clk_prepare_enable(qcom_iommu->iface_clk);
 if (ret) {
  dev_err(qcom_iommu->dev, "Couldn't enable iface_clk\n");
  return ret;
 }

 ret = clk_prepare_enable(qcom_iommu->bus_clk);
 if (ret) {
  dev_err(qcom_iommu->dev, "Couldn't enable bus_clk\n");
  clk_disable_unprepare(qcom_iommu->iface_clk);
  return ret;
 }

 return 0;
}
