
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_iommu_domain {int domain; } ;
struct mtk_iommu_data {scalar_t__ base; int dev; struct mtk_iommu_domain* m4u_dom; } ;
typedef int irqreturn_t ;


 int F_INT_CLR_BIT ;
 int F_MMU_FAULT_VA_MSK ;
 int IOMMU_FAULT_READ ;
 int IRQ_HANDLED ;
 unsigned int MT2701_M4U_TF_LARB (int ) ;
 unsigned int MT2701_M4U_TF_PORT (int ) ;
 scalar_t__ REG_MMU_FAULT_ST ;
 scalar_t__ REG_MMU_FAULT_VA ;
 scalar_t__ REG_MMU_INT_CONTROL ;
 scalar_t__ REG_MMU_INT_ID ;
 scalar_t__ REG_MMU_INVLD_PA ;
 int dev_err_ratelimited (int ,char*,int ,int ,int ,unsigned int,unsigned int) ;
 int mtk_iommu_tlb_flush_all (struct mtk_iommu_data*) ;
 int readl_relaxed (scalar_t__) ;
 scalar_t__ report_iommu_fault (int *,int ,int ,int ) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t mtk_iommu_isr(int irq, void *dev_id)
{
 struct mtk_iommu_data *data = dev_id;
 struct mtk_iommu_domain *dom = data->m4u_dom;
 u32 int_state, regval, fault_iova, fault_pa;
 unsigned int fault_larb, fault_port;


 int_state = readl_relaxed(data->base + REG_MMU_FAULT_ST);
 fault_iova = readl_relaxed(data->base + REG_MMU_FAULT_VA);

 fault_iova &= F_MMU_FAULT_VA_MSK;
 fault_pa = readl_relaxed(data->base + REG_MMU_INVLD_PA);
 regval = readl_relaxed(data->base + REG_MMU_INT_ID);
 fault_larb = MT2701_M4U_TF_LARB(regval);
 fault_port = MT2701_M4U_TF_PORT(regval);





 if (report_iommu_fault(&dom->domain, data->dev, fault_iova,
   IOMMU_FAULT_READ))
  dev_err_ratelimited(data->dev,
   "fault type=0x%x iova=0x%x pa=0x%x larb=%d port=%d\n",
   int_state, fault_iova, fault_pa,
   fault_larb, fault_port);


 regval = readl_relaxed(data->base + REG_MMU_INT_CONTROL);
 regval |= F_INT_CLR_BIT;
 writel_relaxed(regval, data->base + REG_MMU_INT_CONTROL);

 mtk_iommu_tlb_flush_all(data);

 return IRQ_HANDLED;
}
