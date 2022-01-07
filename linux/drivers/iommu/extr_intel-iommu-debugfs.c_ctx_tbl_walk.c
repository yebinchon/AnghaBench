
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct tbl_walk {int bus; int devfn; struct context_entry* ctx_entry; int * rt_entry; int member_0; } ;
struct seq_file {struct tbl_walk* private; } ;
struct intel_iommu {scalar_t__ reg; int * root_entry; } ;
struct context_entry {int lo; } ;


 scalar_t__ DMAR_RTADDR_REG ;
 int DMA_RTADDR_SMT ;
 int VTD_PAGE_MASK ;
 int context_present (struct context_entry*) ;
 int dmar_readq (scalar_t__) ;
 int get_pasid_dir_size (struct context_entry*) ;
 struct context_entry* iommu_context_addr (struct intel_iommu*,int,int,int ) ;
 int pasid_dir_walk (struct seq_file*,int,int) ;
 int print_tbl_walk (struct seq_file*) ;

__attribute__((used)) static void ctx_tbl_walk(struct seq_file *m, struct intel_iommu *iommu, u16 bus)
{
 struct context_entry *context;
 u16 devfn, pasid_dir_size;
 u64 pasid_dir_ptr;

 for (devfn = 0; devfn < 256; devfn++) {
  struct tbl_walk tbl_wlk = {0};
  context = iommu_context_addr(iommu, bus, devfn, 0);
  if (!context)
   return;

  if (!context_present(context))
   continue;

  tbl_wlk.bus = bus;
  tbl_wlk.devfn = devfn;
  tbl_wlk.rt_entry = &iommu->root_entry[bus];
  tbl_wlk.ctx_entry = context;
  m->private = &tbl_wlk;

  if (dmar_readq(iommu->reg + DMAR_RTADDR_REG) & DMA_RTADDR_SMT) {
   pasid_dir_ptr = context->lo & VTD_PAGE_MASK;
   pasid_dir_size = get_pasid_dir_size(context);
   pasid_dir_walk(m, pasid_dir_ptr, pasid_dir_size);
   continue;
  }

  print_tbl_walk(m);
 }
}
