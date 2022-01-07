
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_iommu_dev {int iface_clk; int bus_clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void qcom_iommu_disable_clocks(struct qcom_iommu_dev *qcom_iommu)
{
 clk_disable_unprepare(qcom_iommu->bus_clk);
 clk_disable_unprepare(qcom_iommu->iface_clk);
}
