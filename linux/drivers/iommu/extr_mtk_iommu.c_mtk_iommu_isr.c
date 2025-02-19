
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_iommu_domain {int domain; } ;
struct mtk_iommu_data {scalar_t__ base; int dev; TYPE_1__* plat_data; struct mtk_iommu_domain* m4u_dom; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {unsigned int* larbid_remap; } ;


 int F_INT_CLR_BIT ;
 int F_MMU_FAULT_VA_LAYER_BIT ;
 int F_MMU_FAULT_VA_WRITE_BIT ;
 unsigned int F_MMU_INT_ID_LARB_ID (int) ;
 unsigned int F_MMU_INT_ID_PORT_ID (int) ;
 int F_REG_MMU0_FAULT_MASK ;
 int IOMMU_FAULT_READ ;
 int IOMMU_FAULT_WRITE ;
 int IRQ_HANDLED ;
 scalar_t__ REG_MMU0_FAULT_VA ;
 scalar_t__ REG_MMU0_INT_ID ;
 scalar_t__ REG_MMU0_INVLD_PA ;
 scalar_t__ REG_MMU1_FAULT_VA ;
 scalar_t__ REG_MMU1_INT_ID ;
 scalar_t__ REG_MMU1_INVLD_PA ;
 scalar_t__ REG_MMU_FAULT_ST1 ;
 scalar_t__ REG_MMU_INT_CONTROL0 ;
 int dev_err_ratelimited (int ,char*,int,int,int,unsigned int,unsigned int,int,char*) ;
 int mtk_iommu_tlb_flush_all (struct mtk_iommu_data*) ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ report_iommu_fault (int *,int ,int,int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t mtk_iommu_isr(int irq, void *dev_id)
{
 struct mtk_iommu_data *data = dev_id;
 struct mtk_iommu_domain *dom = data->m4u_dom;
 u32 int_state, regval, fault_iova, fault_pa;
 unsigned int fault_larb, fault_port;
 bool layer, write;


 int_state = readl_relaxed(data->base + REG_MMU_FAULT_ST1);
 if (int_state & F_REG_MMU0_FAULT_MASK) {
  regval = readl_relaxed(data->base + REG_MMU0_INT_ID);
  fault_iova = readl_relaxed(data->base + REG_MMU0_FAULT_VA);
  fault_pa = readl_relaxed(data->base + REG_MMU0_INVLD_PA);
 } else {
  regval = readl_relaxed(data->base + REG_MMU1_INT_ID);
  fault_iova = readl_relaxed(data->base + REG_MMU1_FAULT_VA);
  fault_pa = readl_relaxed(data->base + REG_MMU1_INVLD_PA);
 }
 layer = fault_iova & F_MMU_FAULT_VA_LAYER_BIT;
 write = fault_iova & F_MMU_FAULT_VA_WRITE_BIT;
 fault_larb = F_MMU_INT_ID_LARB_ID(regval);
 fault_port = F_MMU_INT_ID_PORT_ID(regval);

 fault_larb = data->plat_data->larbid_remap[fault_larb];

 if (report_iommu_fault(&dom->domain, data->dev, fault_iova,
          write ? IOMMU_FAULT_WRITE : IOMMU_FAULT_READ)) {
  dev_err_ratelimited(
   data->dev,
   "fault type=0x%x iova=0x%x pa=0x%x larb=%d port=%d layer=%d %s\n",
   int_state, fault_iova, fault_pa, fault_larb, fault_port,
   layer, write ? "write" : "read");
 }


 regval = readl_relaxed(data->base + REG_MMU_INT_CONTROL0);
 regval |= F_INT_CLR_BIT;
 writel_relaxed(regval, data->base + REG_MMU_INT_CONTROL0);

 mtk_iommu_tlb_flush_all(data);

 return IRQ_HANDLED;
}
