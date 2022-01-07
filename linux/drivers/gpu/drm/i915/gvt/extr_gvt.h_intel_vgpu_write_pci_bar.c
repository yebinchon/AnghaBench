
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_vgpu {int dummy; } ;


 int GENMASK (int,int) ;
 int rounddown (int,int) ;
 int vgpu_cfg_space (struct intel_vgpu*) ;

__attribute__((used)) static inline void intel_vgpu_write_pci_bar(struct intel_vgpu *vgpu,
         u32 offset, u32 val, bool low)
{
 u32 *pval;


 offset = rounddown(offset, 4);
 pval = (u32 *)(vgpu_cfg_space(vgpu) + offset);

 if (low) {




  *pval = (val & GENMASK(31, 4)) | (*pval & GENMASK(3, 0));
 } else {
  *pval = val;
 }
}
