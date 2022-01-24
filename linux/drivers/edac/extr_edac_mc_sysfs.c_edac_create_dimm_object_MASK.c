#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct mem_ctl_info {int /*<<< orphan*/  dev; scalar_t__ csbased; } ;
struct TYPE_7__ {int /*<<< orphan*/ * parent; int /*<<< orphan*/ * type; } ;
struct dimm_info {TYPE_1__ dev; struct mem_ctl_info* mci; } ;
typedef  int /*<<< orphan*/  location ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_EDAC_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct dimm_info*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  dimm_attr_type ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (struct dimm_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(struct mem_ctl_info *mci,
				   struct dimm_info *dimm,
				   int index)
{
	int err;
	dimm->mci = mci;

	dimm->dev.type = &dimm_attr_type;
	FUNC5(&dimm->dev);

	dimm->dev.parent = &mci->dev;
	if (mci->csbased)
		FUNC3(&dimm->dev, "rank%d", index);
	else
		FUNC3(&dimm->dev, "dimm%d", index);
	FUNC2(&dimm->dev, dimm);
	FUNC8(&mci->dev);

	err = FUNC4(&dimm->dev);
	if (err) {
		FUNC6(1, "failure: create device %s\n", FUNC1(&dimm->dev));
		FUNC9(&dimm->dev);
		return err;
	}

	if (FUNC0(CONFIG_EDAC_DEBUG)) {
		char location[80];

		FUNC7(dimm, location, sizeof(location));
		FUNC6(0, "device %s created at location %s\n",
			FUNC1(&dimm->dev), location);
	}

	return 0;
}