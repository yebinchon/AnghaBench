#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct mdev_device {int dummy; } ;
struct TYPE_7__ {unsigned int num_regions; TYPE_2__* region; } ;
struct intel_vgpu {TYPE_3__ vdev; } ;
typedef  size_t ssize_t ;
typedef  int loff_t ;
struct TYPE_8__ {int (* emulate_cfg_write ) (struct intel_vgpu*,int,char*,size_t) ;int (* emulate_cfg_read ) (struct intel_vgpu*,int,char*,size_t) ;} ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {size_t (* rw ) (struct intel_vgpu*,char*,size_t,int*,int) ;} ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  PCI_BASE_ADDRESS_0 ; 
#define  VFIO_PCI_BAR0_REGION_INDEX 136 
#define  VFIO_PCI_BAR1_REGION_INDEX 135 
#define  VFIO_PCI_BAR2_REGION_INDEX 134 
#define  VFIO_PCI_BAR3_REGION_INDEX 133 
#define  VFIO_PCI_BAR4_REGION_INDEX 132 
#define  VFIO_PCI_BAR5_REGION_INDEX 131 
#define  VFIO_PCI_CONFIG_REGION_INDEX 130 
 unsigned int VFIO_PCI_NUM_REGIONS ; 
 int VFIO_PCI_OFFSET_MASK ; 
 unsigned int FUNC0 (int) ; 
#define  VFIO_PCI_ROM_REGION_INDEX 129 
#define  VFIO_PCI_VGA_REGION_INDEX 128 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 TYPE_4__* intel_gvt_ops ; 
 int FUNC2 (struct intel_vgpu*,int,char*,size_t,int) ; 
 int FUNC3 (struct intel_vgpu*,int /*<<< orphan*/ ,int,char*,size_t,int) ; 
 struct intel_vgpu* FUNC4 (struct mdev_device*) ; 
 int FUNC5 (struct intel_vgpu*,int,char*,size_t) ; 
 int FUNC6 (struct intel_vgpu*,int,char*,size_t) ; 
 size_t FUNC7 (struct intel_vgpu*,char*,size_t,int*,int) ; 

__attribute__((used)) static ssize_t FUNC8(struct mdev_device *mdev, char *buf,
			size_t count, loff_t *ppos, bool is_write)
{
	struct intel_vgpu *vgpu = FUNC4(mdev);
	unsigned int index = FUNC0(*ppos);
	u64 pos = *ppos & VFIO_PCI_OFFSET_MASK;
	int ret = -EINVAL;


	if (index >= VFIO_PCI_NUM_REGIONS + vgpu->vdev.num_regions) {
		FUNC1("invalid index: %u\n", index);
		return -EINVAL;
	}

	switch (index) {
	case VFIO_PCI_CONFIG_REGION_INDEX:
		if (is_write)
			ret = intel_gvt_ops->emulate_cfg_write(vgpu, pos,
						buf, count);
		else
			ret = intel_gvt_ops->emulate_cfg_read(vgpu, pos,
						buf, count);
		break;
	case VFIO_PCI_BAR0_REGION_INDEX:
		ret = FUNC3(vgpu, PCI_BASE_ADDRESS_0, pos,
					buf, count, is_write);
		break;
	case VFIO_PCI_BAR2_REGION_INDEX:
		ret = FUNC2(vgpu, pos, buf, count, is_write);
		break;
	case VFIO_PCI_BAR1_REGION_INDEX:
	case VFIO_PCI_BAR3_REGION_INDEX:
	case VFIO_PCI_BAR4_REGION_INDEX:
	case VFIO_PCI_BAR5_REGION_INDEX:
	case VFIO_PCI_VGA_REGION_INDEX:
	case VFIO_PCI_ROM_REGION_INDEX:
		break;
	default:
		if (index >= VFIO_PCI_NUM_REGIONS + vgpu->vdev.num_regions)
			return -EINVAL;

		index -= VFIO_PCI_NUM_REGIONS;
		return vgpu->vdev.region[index].ops->rw(vgpu, buf, count,
				ppos, is_write);
	}

	return ret == 0 ? count : ret;
}