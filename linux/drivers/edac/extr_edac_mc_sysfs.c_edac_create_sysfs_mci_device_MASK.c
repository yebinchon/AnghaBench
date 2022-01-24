#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct attribute_group const** groups; int /*<<< orphan*/  parent; int /*<<< orphan*/ * type; } ;
struct mem_ctl_info {int tot_dimms; TYPE_1__ dev; struct dimm_info** dimms; int /*<<< orphan*/  mc_idx; } ;
struct dimm_info {TYPE_1__ dev; int /*<<< orphan*/  nr_pages; } ;
struct attribute_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct mem_ctl_info*) ; 
 int FUNC8 (struct mem_ctl_info*,struct dimm_info*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mci_attr_type ; 
 int /*<<< orphan*/  mci_pdev ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

int FUNC12(struct mem_ctl_info *mci,
				 const struct attribute_group **groups)
{
	int i, err;

	/* get the /sys/devices/system/edac subsys reference */
	mci->dev.type = &mci_attr_type;
	FUNC4(&mci->dev);

	mci->dev.parent = mci_pdev;
	mci->dev.groups = groups;
	FUNC2(&mci->dev, "mc%d", mci->mc_idx);
	FUNC1(&mci->dev, mci);
	FUNC10(&mci->dev);

	err = FUNC3(&mci->dev);
	if (err < 0) {
		FUNC9(1, "failure: create device %s\n", FUNC0(&mci->dev));
		FUNC11(&mci->dev);
		return err;
	}

	FUNC9(0, "device %s created\n", FUNC0(&mci->dev));

	/*
	 * Create the dimm/rank devices
	 */
	for (i = 0; i < mci->tot_dimms; i++) {
		struct dimm_info *dimm = mci->dimms[i];
		/* Only expose populated DIMMs */
		if (!dimm->nr_pages)
			continue;

		err = FUNC8(mci, dimm, i);
		if (err)
			goto fail_unregister_dimm;
	}

#ifdef CONFIG_EDAC_LEGACY_SYSFS
	err = edac_create_csrow_objects(mci);
	if (err < 0)
		goto fail_unregister_dimm;
#endif

	FUNC7(mci);
	return 0;

fail_unregister_dimm:
	for (i--; i >= 0; i--) {
		struct dimm_info *dimm = mci->dimms[i];
		if (!dimm->nr_pages)
			continue;

		FUNC5(&dimm->dev);
	}
	FUNC5(&mci->dev);

	return err;
}