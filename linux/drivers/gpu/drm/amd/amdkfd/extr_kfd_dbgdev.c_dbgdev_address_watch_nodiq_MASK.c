#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  atc; int /*<<< orphan*/  vmid; int /*<<< orphan*/  mode; int /*<<< orphan*/  mask; } ;
union TCP_WATCH_CNTL_BITS {scalar_t__ u32All; TYPE_4__ bitfields; } ;
struct TYPE_9__ {int /*<<< orphan*/  addr; } ;
union TCP_WATCH_ADDR_L_BITS {scalar_t__ u32All; TYPE_2__ bitfields; } ;
struct TYPE_10__ {int /*<<< orphan*/  addr; } ;
union TCP_WATCH_ADDR_H_BITS {scalar_t__ u32All; TYPE_3__ bitfields; } ;
struct TYPE_8__ {int /*<<< orphan*/  vmid; } ;
struct kfd_process_device {TYPE_6__* dev; TYPE_1__ qpd; } ;
struct kfd_dbgdev {TYPE_7__* dev; } ;
struct dbg_address_watch_info {unsigned int num_watch_points; int /*<<< orphan*/  watch_address; int /*<<< orphan*/  watch_mode; int /*<<< orphan*/  process; } ;
struct TYPE_14__ {int /*<<< orphan*/  kgd; } ;
struct TYPE_13__ {TYPE_5__* kfd2kgd; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* address_watch_execute ) (int /*<<< orphan*/ ,unsigned int,scalar_t__,scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 unsigned int MAX_WATCH_ADDRESSES ; 
 int /*<<< orphan*/  FUNC0 (struct dbg_address_watch_info*,union TCP_WATCH_ADDR_H_BITS*,union TCP_WATCH_ADDR_L_BITS*,union TCP_WATCH_CNTL_BITS*,unsigned int,int /*<<< orphan*/ ) ; 
 struct kfd_process_device* FUNC1 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct kfd_dbgdev *dbgdev,
				      struct dbg_address_watch_info *adw_info)
{
	union TCP_WATCH_ADDR_H_BITS addrHi;
	union TCP_WATCH_ADDR_L_BITS addrLo;
	union TCP_WATCH_CNTL_BITS cntl;
	struct kfd_process_device *pdd;
	unsigned int i;

	/* taking the vmid for that process on the safe way using pdd */
	pdd = FUNC1(dbgdev->dev,
					adw_info->process);
	if (!pdd) {
		FUNC3("Failed to get pdd for wave control no DIQ\n");
		return -EFAULT;
	}

	addrHi.u32All = 0;
	addrLo.u32All = 0;
	cntl.u32All = 0;

	if ((adw_info->num_watch_points > MAX_WATCH_ADDRESSES) ||
			(adw_info->num_watch_points == 0)) {
		FUNC3("num_watch_points is invalid\n");
		return -EINVAL;
	}

	if (!adw_info->watch_mode || !adw_info->watch_address) {
		FUNC3("adw_info fields are not valid\n");
		return -EINVAL;
	}

	for (i = 0; i < adw_info->num_watch_points; i++) {
		FUNC0(adw_info, &addrHi, &addrLo,
						&cntl, i, pdd->qpd.vmid);

		FUNC2("\t\t%30s\n", "* * * * * * * * * * * * * * * * * *");
		FUNC2("\t\t%20s %08x\n", "register index :", i);
		FUNC2("\t\t%20s %08x\n", "vmid is :", pdd->qpd.vmid);
		FUNC2("\t\t%20s %08x\n", "Address Low is :",
				addrLo.bitfields.addr);
		FUNC2("\t\t%20s %08x\n", "Address high is :",
				addrHi.bitfields.addr);
		FUNC2("\t\t%20s %08x\n", "Address high is :",
				addrHi.bitfields.addr);
		FUNC2("\t\t%20s %08x\n", "Control Mask is :",
				cntl.bitfields.mask);
		FUNC2("\t\t%20s %08x\n", "Control Mode is :",
				cntl.bitfields.mode);
		FUNC2("\t\t%20s %08x\n", "Control Vmid is :",
				cntl.bitfields.vmid);
		FUNC2("\t\t%20s %08x\n", "Control atc  is :",
				cntl.bitfields.atc);
		FUNC2("\t\t%30s\n", "* * * * * * * * * * * * * * * * * *");

		pdd->dev->kfd2kgd->address_watch_execute(
						dbgdev->dev->kgd,
						i,
						cntl.u32All,
						addrHi.u32All,
						addrLo.u32All);
	}

	return 0;
}