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
struct microcode {scalar_t__ num_cores; scalar_t__ group; void* core_mask; int /*<<< orphan*/  version; scalar_t__ is_ae; } ;
struct device {int dummy; } ;
struct cpt_device {scalar_t__ max_ae_cores; scalar_t__ next_group; scalar_t__ max_se_cores; int /*<<< orphan*/  flags; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_TYPES ; 
 int /*<<< orphan*/  CPT_FLAG_DEVICE_READY ; 
 scalar_t__ CPT_MAX_CORE_GROUPS ; 
 int EINVAL ; 
 int ENFILE ; 
 void* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SE_TYPES ; 
 int /*<<< orphan*/  FUNC1 (struct cpt_device*,scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cpt_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpt_device*,void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct cpt_device*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cpt_device*) ; 
 int FUNC6 (struct cpt_device*,struct microcode*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,...) ; 

__attribute__((used)) static int FUNC8(struct cpt_device *cpt, struct microcode *mcode)
{
	int ret = 0;
	struct device *dev = &cpt->pdev->dev;

	/* Make device not ready */
	cpt->flags &= ~CPT_FLAG_DEVICE_READY;
	/* Disable All PF interrupts */
	FUNC2(cpt);
	/* Calculate mcode group and coremasks */
	if (mcode->is_ae) {
		if (mcode->num_cores > cpt->max_ae_cores) {
			FUNC7(dev, "Requested for more cores than available AE cores\n");
			ret = -EINVAL;
			goto cpt_init_fail;
		}

		if (cpt->next_group >= CPT_MAX_CORE_GROUPS) {
			FUNC7(dev, "Can't load, all eight microcode groups in use");
			return -ENFILE;
		}

		mcode->group = cpt->next_group;
		/* Convert requested cores to mask */
		mcode->core_mask = FUNC0(mcode->num_cores, 0);
		FUNC3(cpt, mcode->core_mask, AE_TYPES,
				  mcode->group);
		/* Load microcode for AE engines */
		ret = FUNC6(cpt, mcode);
		if (ret) {
			FUNC7(dev, "Microcode load Failed for %s\n",
				mcode->version);
			goto cpt_init_fail;
		}
		cpt->next_group++;
		/* Configure group mask for the mcode */
		FUNC1(cpt, mcode->group, mcode->core_mask,
				    AE_TYPES);
		/* Enable AE cores for the group mask */
		FUNC4(cpt, mcode->core_mask, AE_TYPES);
	} else {
		if (mcode->num_cores > cpt->max_se_cores) {
			FUNC7(dev, "Requested for more cores than available SE cores\n");
			ret = -EINVAL;
			goto cpt_init_fail;
		}
		if (cpt->next_group >= CPT_MAX_CORE_GROUPS) {
			FUNC7(dev, "Can't load, all eight microcode groups in use");
			return -ENFILE;
		}

		mcode->group = cpt->next_group;
		/* Covert requested cores to mask */
		mcode->core_mask = FUNC0(mcode->num_cores, 0);
		FUNC3(cpt, mcode->core_mask, SE_TYPES,
				  mcode->group);
		/* Load microcode for SE engines */
		ret = FUNC6(cpt, mcode);
		if (ret) {
			FUNC7(dev, "Microcode load Failed for %s\n",
				mcode->version);
			goto cpt_init_fail;
		}
		cpt->next_group++;
		/* Configure group mask for the mcode */
		FUNC1(cpt, mcode->group, mcode->core_mask,
				    SE_TYPES);
		/* Enable SE cores for the group mask */
		FUNC4(cpt, mcode->core_mask, SE_TYPES);
	}

	/* Enabled PF mailbox interrupts */
	FUNC5(cpt);
	cpt->flags |= CPT_FLAG_DEVICE_READY;

	return ret;

cpt_init_fail:
	/* Enabled PF mailbox interrupts */
	FUNC5(cpt);

	return ret;
}