#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  grp; } ;
union cptx_pf_qx_ctl {int /*<<< orphan*/  u; TYPE_2__ s; } ;
typedef  size_t u8 ;
struct microcode {scalar_t__ is_ae; int /*<<< orphan*/  group; } ;
struct device {int dummy; } ;
struct cpt_device {size_t next_mc_idx; int /*<<< orphan*/  reg_base; TYPE_1__* pdev; struct microcode* mcode; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int AE_TYPES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 size_t CPT_MAX_CORE_GROUPS ; 
 size_t CPT_MAX_VF_NUM ; 
 int EINVAL ; 
 int SE_TYPES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 

__attribute__((used)) static int FUNC5(struct cpt_device *cpt, u8 q, u8 grp)
{
	struct microcode *mcode = cpt->mcode;
	union cptx_pf_qx_ctl pf_qx_ctl;
	struct device *dev = &cpt->pdev->dev;

	if (q >= CPT_MAX_VF_NUM) {
		FUNC4(dev, "Queues are more than cores in the group");
		return -EINVAL;
	}
	if (grp >= CPT_MAX_CORE_GROUPS) {
		FUNC4(dev, "Request group is more than possible groups");
		return -EINVAL;
	}
	if (grp >= cpt->next_mc_idx) {
		FUNC4(dev, "Request group is higher than available functional groups");
		return -EINVAL;
	}
	pf_qx_ctl.u = FUNC1(cpt->reg_base, FUNC0(0, q));
	pf_qx_ctl.s.grp = mcode[grp].group;
	FUNC2(cpt->reg_base, FUNC0(0, q), pf_qx_ctl.u);
	FUNC3(dev, "VF %d TYPE %s", q, (mcode[grp].is_ae ? "AE" : "SE"));

	return mcode[grp].is_ae ? AE_TYPES : SE_TYPES;
}