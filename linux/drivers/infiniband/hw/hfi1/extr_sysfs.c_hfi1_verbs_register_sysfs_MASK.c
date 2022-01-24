#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  kobj; } ;
struct ib_device {struct device dev; } ;
struct TYPE_6__ {struct ib_device ibdev; } ;
struct TYPE_7__ {TYPE_1__ rdi; } ;
struct hfi1_devdata {int num_sdma; TYPE_3__* per_sdma; TYPE_2__ verbs_dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  attr; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 TYPE_4__** sde_attribs ; 
 int /*<<< orphan*/  sde_ktype ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(struct hfi1_devdata *dd)
{
	struct ib_device *dev = &dd->verbs_dev.rdi.ibdev;
	struct device *class_dev = &dev->dev;
	int i, j, ret;

	for (i = 0; i < dd->num_sdma; i++) {
		ret = FUNC2(&dd->per_sdma[i].kobj,
					   &sde_ktype, &class_dev->kobj,
					   "sdma%d", i);
		if (ret)
			goto bail;

		for (j = 0; j < FUNC0(sde_attribs); j++) {
			ret = FUNC3(&dd->per_sdma[i].kobj,
						&sde_attribs[j]->attr);
			if (ret)
				goto bail;
		}
	}

	return 0;
bail:
	for (i = 0; i < dd->num_sdma; i++)
		FUNC1(&dd->per_sdma[i].kobj);

	return ret;
}