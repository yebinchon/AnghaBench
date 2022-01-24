#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct task_struct {int dummy; } ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ops; } ;
struct pasid_state {int pasid; int invalid; TYPE_1__ mn; struct mm_struct* mm; struct device_state* device_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  wq; int /*<<< orphan*/  count; } ;
struct mm_struct {int /*<<< orphan*/  pgd; } ;
struct device_state {int max_pasids; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device_state*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pasid_state*) ; 
 struct device_state* FUNC7 (int /*<<< orphan*/ ) ; 
 struct mm_struct* FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iommu_mn ; 
 struct pasid_state* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC15 (struct device_state*) ; 
 int FUNC16 (struct device_state*,struct pasid_state*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

int FUNC18(struct pci_dev *pdev, int pasid,
			 struct task_struct *task)
{
	struct pasid_state *pasid_state;
	struct device_state *dev_state;
	struct mm_struct *mm;
	u16 devid;
	int ret;

	FUNC11();

	if (!FUNC2())
		return -ENODEV;

	devid     = FUNC5(pdev);
	dev_state = FUNC7(devid);

	if (dev_state == NULL)
		return -EINVAL;

	ret = -EINVAL;
	if (pasid < 0 || pasid >= dev_state->max_pasids)
		goto out;

	ret = -ENOMEM;
	pasid_state = FUNC10(sizeof(*pasid_state), GFP_KERNEL);
	if (pasid_state == NULL)
		goto out;


	FUNC3(&pasid_state->count, 1);
	FUNC9(&pasid_state->wq);
	FUNC17(&pasid_state->lock);

	mm                        = FUNC8(task);
	pasid_state->mm           = mm;
	pasid_state->device_state = dev_state;
	pasid_state->pasid        = pasid;
	pasid_state->invalid      = true; /* Mark as valid only if we are
					     done with setting up the pasid */
	pasid_state->mn.ops       = &iommu_mn;

	if (pasid_state->mm == NULL)
		goto out_free;

	FUNC13(&pasid_state->mn, mm);

	ret = FUNC16(dev_state, pasid_state, pasid);
	if (ret)
		goto out_unregister;

	ret = FUNC1(dev_state->domain, pasid,
					FUNC0(pasid_state->mm->pgd));
	if (ret)
		goto out_clear_state;

	/* Now we are ready to handle faults */
	pasid_state->invalid = false;

	/*
	 * Drop the reference to the mm_struct here. We rely on the
	 * mmu_notifier release call-back to inform us when the mm
	 * is going away.
	 */
	FUNC12(mm);

	return 0;

out_clear_state:
	FUNC4(dev_state, pasid);

out_unregister:
	FUNC14(&pasid_state->mn, mm);
	FUNC12(mm);

out_free:
	FUNC6(pasid_state);

out:
	FUNC15(dev_state);

	return ret;
}