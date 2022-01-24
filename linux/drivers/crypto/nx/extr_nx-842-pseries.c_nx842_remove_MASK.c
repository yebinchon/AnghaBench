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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct vio_dev {TYPE_1__ dev; } ;
struct nx842_devdata {struct nx842_devdata* counters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  devdata ; 
 int /*<<< orphan*/  devdata_mutex ; 
 int /*<<< orphan*/  FUNC3 (struct nx842_devdata*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nx842_attribute_group ; 
 int /*<<< orphan*/  nx842_of_nb ; 
 int /*<<< orphan*/  nx842_pseries_alg ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct nx842_devdata* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct vio_dev *viodev)
{
	struct nx842_devdata *old_devdata;
	unsigned long flags;

	FUNC6("Removing IBM Power 842 compression device\n");
	FUNC11(&viodev->dev.kobj, &nx842_attribute_group);

	FUNC1(&nx842_pseries_alg);

	FUNC8(&devdata_mutex, flags);
	old_devdata = FUNC7(devdata,
			FUNC4(&devdata_mutex));
	FUNC5(&nx842_of_nb);
	FUNC0(devdata, NULL);
	FUNC9(&devdata_mutex, flags);
	FUNC10();
	FUNC2(&viodev->dev, NULL);
	if (old_devdata)
		FUNC3(old_devdata->counters);
	FUNC3(old_devdata);

	return 0;
}