
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sysmmu_iova_t ;
struct sysmmu_fault_info {unsigned int bit; int type; scalar_t__ addr_reg; } ;
struct sysmmu_drvdata {int lock; int clk_master; scalar_t__ sfrbase; int master; TYPE_1__* domain; int version; int active; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int domain; } ;


 unsigned int ARRAY_SIZE (struct sysmmu_fault_info*) ;
 int BUG_ON (int) ;
 int ENOSYS ;
 int IRQ_HANDLED ;
 int MMU_MAJ_VER (int ) ;
 unsigned short REG_INT_CLEAR ;
 unsigned short REG_INT_STATUS ;
 unsigned short REG_V5_INT_CLEAR ;
 unsigned short REG_V5_INT_STATUS ;
 int WARN_ON (int) ;
 unsigned int __ffs (int) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int readl (scalar_t__) ;
 int report_iommu_fault (int *,int ,int,int ) ;
 int show_fault_information (struct sysmmu_drvdata*,struct sysmmu_fault_info const*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct sysmmu_fault_info* sysmmu_faults ;
 int sysmmu_unblock (struct sysmmu_drvdata*) ;
 struct sysmmu_fault_info* sysmmu_v5_faults ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t exynos_sysmmu_irq(int irq, void *dev_id)
{

 struct sysmmu_drvdata *data = dev_id;
 const struct sysmmu_fault_info *finfo;
 unsigned int i, n, itype;
 sysmmu_iova_t fault_addr = -1;
 unsigned short reg_status, reg_clear;
 int ret = -ENOSYS;

 WARN_ON(!data->active);

 if (MMU_MAJ_VER(data->version) < 5) {
  reg_status = REG_INT_STATUS;
  reg_clear = REG_INT_CLEAR;
  finfo = sysmmu_faults;
  n = ARRAY_SIZE(sysmmu_faults);
 } else {
  reg_status = REG_V5_INT_STATUS;
  reg_clear = REG_V5_INT_CLEAR;
  finfo = sysmmu_v5_faults;
  n = ARRAY_SIZE(sysmmu_v5_faults);
 }

 spin_lock(&data->lock);

 clk_enable(data->clk_master);

 itype = __ffs(readl(data->sfrbase + reg_status));
 for (i = 0; i < n; i++, finfo++)
  if (finfo->bit == itype)
   break;

 BUG_ON(i == n);


 fault_addr = readl(data->sfrbase + finfo->addr_reg);
 show_fault_information(data, finfo, fault_addr);

 if (data->domain)
  ret = report_iommu_fault(&data->domain->domain,
     data->master, fault_addr, finfo->type);

 BUG_ON(ret != 0);

 writel(1 << itype, data->sfrbase + reg_clear);

 sysmmu_unblock(data);

 clk_disable(data->clk_master);

 spin_unlock(&data->lock);

 return IRQ_HANDLED;
}
