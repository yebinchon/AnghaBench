
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_iommu_domain {int pgtlock; TYPE_1__* iop; } ;
struct mtk_iommu_data {scalar_t__ enable_4GB; } ;
struct iommu_domain {int dummy; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {int (* map ) (TYPE_1__*,unsigned long,int ,size_t,int) ;} ;


 int BIT_ULL (int) ;
 struct mtk_iommu_data* mtk_iommu_get_m4u_data () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*,unsigned long,int ,size_t,int) ;
 struct mtk_iommu_domain* to_mtk_domain (struct iommu_domain*) ;

__attribute__((used)) static int mtk_iommu_map(struct iommu_domain *domain, unsigned long iova,
    phys_addr_t paddr, size_t size, int prot)
{
 struct mtk_iommu_domain *dom = to_mtk_domain(domain);
 struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
 unsigned long flags;
 int ret;


 if (data->enable_4GB)
  paddr |= BIT_ULL(32);

 spin_lock_irqsave(&dom->pgtlock, flags);
 ret = dom->iop->map(dom->iop, iova, paddr, size, prot);
 spin_unlock_irqrestore(&dom->pgtlock, flags);

 return ret;
}
