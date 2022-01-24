#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  bus; } ;
struct mem_ctl_info {TYPE_1__ dev; struct i7core_pvt* pvt_info; } ;
struct i7core_pvt {TYPE_2__* addrmatch_dev; TYPE_2__* chancounts_dev; int /*<<< orphan*/  is_registered; } ;
struct TYPE_10__ {TYPE_1__* parent; int /*<<< orphan*/  bus; int /*<<< orphan*/ * type; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  addrmatch_type ; 
 int /*<<< orphan*/  all_channel_counts_type ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC9(struct mem_ctl_info *mci)
{
	struct i7core_pvt *pvt = mci->pvt_info;
	int rc;

	pvt->addrmatch_dev = FUNC7(sizeof(*pvt->addrmatch_dev), GFP_KERNEL);
	if (!pvt->addrmatch_dev)
		return -ENOMEM;

	pvt->addrmatch_dev->type = &addrmatch_type;
	pvt->addrmatch_dev->bus = mci->dev.bus;
	FUNC5(pvt->addrmatch_dev);
	pvt->addrmatch_dev->parent = &mci->dev;
	FUNC2(pvt->addrmatch_dev, "inject_addrmatch");
	FUNC1(pvt->addrmatch_dev, mci);

	FUNC6(1, "creating %s\n", FUNC0(pvt->addrmatch_dev));

	rc = FUNC3(pvt->addrmatch_dev);
	if (rc < 0)
		goto err_put_addrmatch;

	if (!pvt->is_registered) {
		pvt->chancounts_dev = FUNC7(sizeof(*pvt->chancounts_dev),
					      GFP_KERNEL);
		if (!pvt->chancounts_dev) {
			rc = -ENOMEM;
			goto err_del_addrmatch;
		}

		pvt->chancounts_dev->type = &all_channel_counts_type;
		pvt->chancounts_dev->bus = mci->dev.bus;
		FUNC5(pvt->chancounts_dev);
		pvt->chancounts_dev->parent = &mci->dev;
		FUNC2(pvt->chancounts_dev, "all_channel_counts");
		FUNC1(pvt->chancounts_dev, mci);

		FUNC6(1, "creating %s\n", FUNC0(pvt->chancounts_dev));

		rc = FUNC3(pvt->chancounts_dev);
		if (rc < 0)
			goto err_put_chancounts;
	}
	return 0;

err_put_chancounts:
	FUNC8(pvt->chancounts_dev);
err_del_addrmatch:
	FUNC4(pvt->addrmatch_dev);
err_put_addrmatch:
	FUNC8(pvt->addrmatch_dev);

	return rc;
}