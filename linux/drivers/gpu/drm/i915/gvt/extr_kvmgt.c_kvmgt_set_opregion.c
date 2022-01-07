
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_vgpu {int dummy; } ;
struct TYPE_2__ {void* va; } ;


 int EINVAL ;
 int ENOMEM ;
 int OPREGION_SIGNATURE ;
 int OPREGION_SIZE ;
 int PCI_VENDOR_ID_INTEL ;
 int VFIO_REGION_INFO_FLAG_READ ;
 int VFIO_REGION_SUBTYPE_INTEL_IGD_OPREGION ;
 int VFIO_REGION_TYPE_PCI_VENDOR_TYPE ;
 int intel_vgpu_register_reg (struct intel_vgpu*,int,int ,int *,int ,int ,void*) ;
 int intel_vgpu_regops_opregion ;
 scalar_t__ memcmp (void*,int ,int) ;
 int memunmap (void*) ;
 TYPE_1__* vgpu_opregion (struct intel_vgpu*) ;

__attribute__((used)) static int kvmgt_set_opregion(void *p_vgpu)
{
 struct intel_vgpu *vgpu = (struct intel_vgpu *)p_vgpu;
 void *base;
 int ret;





 base = vgpu_opregion(vgpu)->va;
 if (!base)
  return -ENOMEM;

 if (memcmp(base, OPREGION_SIGNATURE, 16)) {
  memunmap(base);
  return -EINVAL;
 }

 ret = intel_vgpu_register_reg(vgpu,
   PCI_VENDOR_ID_INTEL | VFIO_REGION_TYPE_PCI_VENDOR_TYPE,
   VFIO_REGION_SUBTYPE_INTEL_IGD_OPREGION,
   &intel_vgpu_regops_opregion, OPREGION_SIZE,
   VFIO_REGION_INFO_FLAG_READ, base);

 return ret;
}
