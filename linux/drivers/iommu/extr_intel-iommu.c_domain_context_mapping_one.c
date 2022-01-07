
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
typedef scalar_t__ u16 ;
struct pasid_table {struct dma_pte* table; } ;
struct TYPE_2__ {int (* flush_iotlb ) (struct intel_iommu*,scalar_t__,int ,int ,int ) ;int (* flush_context ) (struct intel_iommu*,scalar_t__,scalar_t__,int ,int ) ;} ;
struct intel_iommu {size_t seq_id; int agaw; int msagaw; int lock; TYPE_1__ flush; int cap; } ;
struct dmar_domain {scalar_t__* iommu_did; int agaw; struct dma_pte* pgd; } ;
struct dma_pte {int dummy; } ;
struct device_domain_info {scalar_t__ ats_supported; scalar_t__ pri_supported; } ;
struct context_entry {int lo; } ;


 int BUG_ON (int) ;
 int CONTEXT_TT_DEV_IOTLB ;
 int CONTEXT_TT_MULTI_LEVEL ;
 int CONTEXT_TT_PASS_THROUGH ;
 int DMA_CCMD_DEVICE_INVL ;
 int DMA_CCMD_MASK_NOBIT ;
 int DMA_TLB_DSI_FLUSH ;
 int ENOMEM ;
 int PASID_RID2PASID ;
 int PCI_FUNC (scalar_t__) ;
 int PCI_SLOT (scalar_t__) ;
 int WARN_ON (int) ;
 scalar_t__ cap_caching_mode (int ) ;
 scalar_t__ cap_ndoms (int ) ;
 int context_clear_entry (struct context_entry*) ;
 scalar_t__ context_copied (struct context_entry*) ;
 scalar_t__ context_domain_id (struct context_entry*) ;
 unsigned long context_get_sm_pds (struct pasid_table*) ;
 int context_pdts (unsigned long) ;
 scalar_t__ context_present (struct context_entry*) ;
 int context_set_address_root (struct context_entry*,scalar_t__) ;
 int context_set_address_width (struct context_entry*,int) ;
 int context_set_domain_id (struct context_entry*,scalar_t__) ;
 int context_set_fault_enable (struct context_entry*) ;
 int context_set_present (struct context_entry*) ;
 int context_set_sm_dte (struct context_entry*) ;
 int context_set_sm_pre (struct context_entry*) ;
 int context_set_sm_rid2pasid (struct context_entry*,int ) ;
 int context_set_translation_type (struct context_entry*,int) ;
 int device_domain_lock ;
 int dma_pte_addr (struct dma_pte*) ;
 int dma_pte_present (struct dma_pte*) ;
 int domain_flush_cache (struct dmar_domain*,struct context_entry*,int) ;
 scalar_t__ domain_type_is_si (struct dmar_domain*) ;
 scalar_t__ hw_pass_through ;
 struct context_entry* iommu_context_addr (struct intel_iommu*,scalar_t__,scalar_t__,int) ;
 int iommu_enable_dev_iotlb (struct device_domain_info*) ;
 int iommu_flush_write_buffer (struct intel_iommu*) ;
 struct device_domain_info* iommu_support_dev_iotlb (struct dmar_domain*,struct intel_iommu*,scalar_t__,scalar_t__) ;
 struct dma_pte* phys_to_virt (int ) ;
 int pr_debug (char*,scalar_t__,int ,int ) ;
 scalar_t__ sm_supported (struct intel_iommu*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct intel_iommu*,scalar_t__,scalar_t__,int ,int ) ;
 int stub2 (struct intel_iommu*,scalar_t__,int ,int ,int ) ;
 int stub3 (struct intel_iommu*,scalar_t__,scalar_t__,int ,int ) ;
 int stub4 (struct intel_iommu*,scalar_t__,int ,int ,int ) ;
 scalar_t__ virt_to_phys (struct dma_pte*) ;

__attribute__((used)) static int domain_context_mapping_one(struct dmar_domain *domain,
          struct intel_iommu *iommu,
          struct pasid_table *table,
          u8 bus, u8 devfn)
{
 u16 did = domain->iommu_did[iommu->seq_id];
 int translation = CONTEXT_TT_MULTI_LEVEL;
 struct device_domain_info *info = ((void*)0);
 struct context_entry *context;
 unsigned long flags;
 int ret;

 WARN_ON(did == 0);

 if (hw_pass_through && domain_type_is_si(domain))
  translation = CONTEXT_TT_PASS_THROUGH;

 pr_debug("Set context mapping for %02x:%02x.%d\n",
  bus, PCI_SLOT(devfn), PCI_FUNC(devfn));

 BUG_ON(!domain->pgd);

 spin_lock_irqsave(&device_domain_lock, flags);
 spin_lock(&iommu->lock);

 ret = -ENOMEM;
 context = iommu_context_addr(iommu, bus, devfn, 1);
 if (!context)
  goto out_unlock;

 ret = 0;
 if (context_present(context))
  goto out_unlock;
 if (context_copied(context)) {
  u16 did_old = context_domain_id(context);

  if (did_old < cap_ndoms(iommu->cap)) {
   iommu->flush.flush_context(iommu, did_old,
         (((u16)bus) << 8) | devfn,
         DMA_CCMD_MASK_NOBIT,
         DMA_CCMD_DEVICE_INVL);
   iommu->flush.flush_iotlb(iommu, did_old, 0, 0,
       DMA_TLB_DSI_FLUSH);
  }
 }

 context_clear_entry(context);

 if (sm_supported(iommu)) {
  unsigned long pds;

  WARN_ON(!table);


  pds = context_get_sm_pds(table);
  context->lo = (u64)virt_to_phys(table->table) |
    context_pdts(pds);


  context_set_sm_rid2pasid(context, PASID_RID2PASID);





  info = iommu_support_dev_iotlb(domain, iommu, bus, devfn);
  if (info && info->ats_supported)
   context_set_sm_dte(context);
  if (info && info->pri_supported)
   context_set_sm_pre(context);
 } else {
  struct dma_pte *pgd = domain->pgd;
  int agaw;

  context_set_domain_id(context, did);

  if (translation != CONTEXT_TT_PASS_THROUGH) {




   for (agaw = domain->agaw; agaw > iommu->agaw; agaw--) {
    ret = -ENOMEM;
    pgd = phys_to_virt(dma_pte_addr(pgd));
    if (!dma_pte_present(pgd))
     goto out_unlock;
   }

   info = iommu_support_dev_iotlb(domain, iommu, bus, devfn);
   if (info && info->ats_supported)
    translation = CONTEXT_TT_DEV_IOTLB;
   else
    translation = CONTEXT_TT_MULTI_LEVEL;

   context_set_address_root(context, virt_to_phys(pgd));
   context_set_address_width(context, agaw);
  } else {





   context_set_address_width(context, iommu->msagaw);
  }

  context_set_translation_type(context, translation);
 }

 context_set_fault_enable(context);
 context_set_present(context);
 domain_flush_cache(domain, context, sizeof(*context));







 if (cap_caching_mode(iommu->cap)) {
  iommu->flush.flush_context(iommu, 0,
        (((u16)bus) << 8) | devfn,
        DMA_CCMD_MASK_NOBIT,
        DMA_CCMD_DEVICE_INVL);
  iommu->flush.flush_iotlb(iommu, did, 0, 0, DMA_TLB_DSI_FLUSH);
 } else {
  iommu_flush_write_buffer(iommu);
 }
 iommu_enable_dev_iotlb(info);

 ret = 0;

out_unlock:
 spin_unlock(&iommu->lock);
 spin_unlock_irqrestore(&device_domain_lock, flags);

 return ret;
}
