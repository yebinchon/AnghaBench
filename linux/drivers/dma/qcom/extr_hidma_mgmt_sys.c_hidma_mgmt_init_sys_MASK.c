#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct kobject {int dummy; } ;
struct hidma_mgmt_dev {int dma_channels; void** chroots; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_7__ {struct kobject kobj; } ;
struct TYPE_6__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {TYPE_3__ dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_2__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int S_IRUGO ; 
 int S_IWUGO ; 
 int FUNC1 (struct hidma_mgmt_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hidma_mgmt_dev*,char*,int,unsigned int,void*) ; 
 void** FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* hidma_mgmt_files ; 
 void* FUNC4 (char*,struct kobject*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,unsigned int) ; 

int FUNC6(struct hidma_mgmt_dev *mdev)
{
	unsigned int i;
	int rc;
	int required;
	struct kobject *chanops;

	required = sizeof(*mdev->chroots) * mdev->dma_channels;
	mdev->chroots = FUNC3(&mdev->pdev->dev, required, GFP_KERNEL);
	if (!mdev->chroots)
		return -ENOMEM;

	chanops = FUNC4("chanops", &mdev->pdev->dev.kobj);
	if (!chanops)
		return -ENOMEM;

	/* create each channel directory here */
	for (i = 0; i < mdev->dma_channels; i++) {
		char name[20];

		FUNC5(name, sizeof(name), "chan%d", i);
		mdev->chroots[i] = FUNC4(name, chanops);
		if (!mdev->chroots[i])
			return -ENOMEM;
	}

	/* populate common parameters */
	for (i = 0; i < FUNC0(hidma_mgmt_files); i++) {
		rc = FUNC1(mdev, hidma_mgmt_files[i].name,
					hidma_mgmt_files[i].mode);
		if (rc)
			return rc;
	}

	/* populate parameters that are per channel */
	for (i = 0; i < mdev->dma_channels; i++) {
		rc = FUNC2(mdev, "priority",
						(S_IRUGO | S_IWUGO), i,
						mdev->chroots[i]);
		if (rc)
			return rc;

		rc = FUNC2(mdev, "weight",
						(S_IRUGO | S_IWUGO), i,
						mdev->chroots[i]);
		if (rc)
			return rc;
	}

	return 0;
}