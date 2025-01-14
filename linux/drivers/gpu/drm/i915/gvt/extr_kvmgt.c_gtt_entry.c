
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mdev_device {int dummy; } ;
struct intel_vgpu {struct intel_gvt* gvt; } ;
struct TYPE_2__ {int gtt_start_offset; } ;
struct intel_gvt {TYPE_1__ device_info; } ;
typedef int loff_t ;


 unsigned int PCI_BASE_ADDRESS_0 ;
 int VFIO_PCI_OFFSET_MASK ;
 unsigned int VFIO_PCI_OFFSET_TO_INDEX (int) ;
 int gvt_ggtt_sz (struct intel_gvt*) ;
 int intel_vgpu_get_bar_gpa (struct intel_vgpu*,unsigned int) ;
 struct intel_vgpu* mdev_get_drvdata (struct mdev_device*) ;

__attribute__((used)) static bool gtt_entry(struct mdev_device *mdev, loff_t *ppos)
{
 struct intel_vgpu *vgpu = mdev_get_drvdata(mdev);
 unsigned int index = VFIO_PCI_OFFSET_TO_INDEX(*ppos);
 struct intel_gvt *gvt = vgpu->gvt;
 int offset;


 if (index != PCI_BASE_ADDRESS_0)
  return 0;

 offset = (u64)(*ppos & VFIO_PCI_OFFSET_MASK) -
  intel_vgpu_get_bar_gpa(vgpu, PCI_BASE_ADDRESS_0);

 return (offset >= gvt->device_info.gtt_start_offset &&
  offset < gvt->device_info.gtt_start_offset + gvt_ggtt_sz(gvt)) ?
   1 : 0;
}
