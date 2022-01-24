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
 struct komeda_drv* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct komeda_drv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct komeda_drv *mdrv = FUNC0(dev);

	if (!mdrv)
		return;

	FUNC4(mdrv->kms);
	FUNC3(mdrv->mdev);

	FUNC1(dev, NULL);
	FUNC2(dev, mdrv);
}