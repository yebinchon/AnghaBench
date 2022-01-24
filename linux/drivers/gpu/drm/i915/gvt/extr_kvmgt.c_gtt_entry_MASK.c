#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct mdev_device {int dummy; } ;
struct intel_vgpu {struct intel_gvt* gvt; } ;
struct TYPE_2__ {int gtt_start_offset; } ;
struct intel_gvt {TYPE_1__ device_info; } ;
typedef  int loff_t ;

/* Variables and functions */
 unsigned int PCI_BASE_ADDRESS_0 ; 
 int VFIO_PCI_OFFSET_MASK ; 
 unsigned int FUNC0 (int) ; 
 int FUNC1 (struct intel_gvt*) ; 
 int FUNC2 (struct intel_vgpu*,unsigned int) ; 
 struct intel_vgpu* FUNC3 (struct mdev_device*) ; 

__attribute__((used)) static bool FUNC4(struct mdev_device *mdev, loff_t *ppos)
{
	struct intel_vgpu *vgpu = FUNC3(mdev);
	unsigned int index = FUNC0(*ppos);
	struct intel_gvt *gvt = vgpu->gvt;
	int offset;

	/* Only allow MMIO GGTT entry access */
	if (index != PCI_BASE_ADDRESS_0)
		return false;

	offset = (u64)(*ppos & VFIO_PCI_OFFSET_MASK) -
		FUNC2(vgpu, PCI_BASE_ADDRESS_0);

	return (offset >= gvt->device_info.gtt_start_offset &&
		offset < gvt->device_info.gtt_start_offset + FUNC1(gvt)) ?
			true : false;
}