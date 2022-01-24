#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct komeda_drv {int /*<<< orphan*/  mdev; int /*<<< orphan*/  kms; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct komeda_drv*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct komeda_drv*) ; 
 struct komeda_drv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct device *dev)
{
	struct komeda_drv *mdrv;
	int err;

	mdrv = FUNC4(dev, sizeof(*mdrv), GFP_KERNEL);
	if (!mdrv)
		return -ENOMEM;

	mdrv->mdev = FUNC5(dev);
	if (FUNC0(mdrv->mdev)) {
		err = FUNC1(mdrv->mdev);
		goto free_mdrv;
	}

	mdrv->kms = FUNC7(mdrv->mdev);
	if (FUNC0(mdrv->kms)) {
		err = FUNC1(mdrv->kms);
		goto destroy_mdev;
	}

	FUNC2(dev, mdrv);

	return 0;

destroy_mdev:
	FUNC6(mdrv->mdev);

free_mdrv:
	FUNC3(dev, mdrv);
	return err;
}