#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int vm_id; } ;
union SQ_CMD_BITS {scalar_t__ u32All; TYPE_2__ bits; } ;
union GRBM_GFX_INDEX_BITS {int /*<<< orphan*/  u32All; } ;
struct kfd_process_device {int dummy; } ;
struct kfd_process {int /*<<< orphan*/  pasid; } ;
struct TYPE_4__ {int first_vmid_kfd; int last_vmid_kfd; } ;
struct kfd_dev {int /*<<< orphan*/  kgd; TYPE_3__* kfd2kgd; TYPE_1__ vm_info; } ;
struct dbg_wave_control_info {int /*<<< orphan*/  operand; int /*<<< orphan*/  mode; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* wave_control_execute ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ;int /*<<< orphan*/  (* get_atc_vmid_pasid_mapping_pasid ) (int /*<<< orphan*/ ,unsigned int) ;scalar_t__ (* get_atc_vmid_pasid_mapping_valid ) (int /*<<< orphan*/ ,unsigned int) ;} ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  HSA_DBG_WAVEMODE_BROADCAST_PROCESS ; 
 int /*<<< orphan*/  HSA_DBG_WAVEOP_KILL ; 
 int FUNC0 (struct dbg_wave_control_info*,union SQ_CMD_BITS*,union GRBM_GFX_INDEX_BITS*) ; 
 struct kfd_process_device* FUNC1 (struct kfd_dev*,struct kfd_process*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC7(struct kfd_dev *dev, struct kfd_process *p)
{
	int status = 0;
	unsigned int vmid;
	union SQ_CMD_BITS reg_sq_cmd;
	union GRBM_GFX_INDEX_BITS reg_gfx_index;
	struct kfd_process_device *pdd;
	struct dbg_wave_control_info wac_info;
	int first_vmid_to_scan = dev->vm_info.first_vmid_kfd;
	int last_vmid_to_scan = dev->vm_info.last_vmid_kfd;

	reg_sq_cmd.u32All = 0;
	status = 0;

	wac_info.mode = HSA_DBG_WAVEMODE_BROADCAST_PROCESS;
	wac_info.operand = HSA_DBG_WAVEOP_KILL;

	FUNC2("Killing all process wavefronts\n");

	/* Scan all registers in the range ATC_VMID8_PASID_MAPPING ..
	 * ATC_VMID15_PASID_MAPPING
	 * to check which VMID the current process is mapped to.
	 */

	for (vmid = first_vmid_to_scan; vmid <= last_vmid_to_scan; vmid++) {
		if (dev->kfd2kgd->get_atc_vmid_pasid_mapping_valid
				(dev->kgd, vmid)) {
			if (dev->kfd2kgd->get_atc_vmid_pasid_mapping_pasid
					(dev->kgd, vmid) == p->pasid) {
				FUNC2("Killing wave fronts of vmid %d and pasid %d\n",
						vmid, p->pasid);
				break;
			}
		}
	}

	if (vmid > last_vmid_to_scan) {
		FUNC3("Didn't find vmid for pasid %d\n", p->pasid);
		return -EFAULT;
	}

	/* taking the VMID for that process on the safe way using PDD */
	pdd = FUNC1(dev, p);
	if (!pdd)
		return -EFAULT;

	status = FUNC0(&wac_info, &reg_sq_cmd,
			&reg_gfx_index);
	if (status != 0)
		return -EINVAL;

	/* for non DIQ we need to patch the VMID: */
	reg_sq_cmd.bits.vm_id = vmid;

	dev->kfd2kgd->wave_control_execute(dev->kgd,
					reg_gfx_index.u32All,
					reg_sq_cmd.u32All);

	return 0;
}