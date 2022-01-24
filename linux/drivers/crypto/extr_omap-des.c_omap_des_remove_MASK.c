#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct omap_des_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  done_task; TYPE_2__* pdata; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {int algs_info_size; TYPE_1__* algs_info; } ;
struct TYPE_3__ {int registered; int /*<<< orphan*/ * algs_list; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC2 (struct omap_des_dev*) ; 
 struct omap_des_dev* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct omap_des_dev *dd = FUNC3(pdev);
	int i, j;

	if (!dd)
		return -ENODEV;

	FUNC5(&list_lock);
	FUNC1(&dd->list);
	FUNC6(&list_lock);

	for (i = dd->pdata->algs_info_size - 1; i >= 0; i--)
		for (j = dd->pdata->algs_info[i].registered - 1; j >= 0; j--)
			FUNC0(
					&dd->pdata->algs_info[i].algs_list[j]);

	FUNC7(&dd->done_task);
	FUNC2(dd);
	FUNC4(dd->dev);
	dd = NULL;

	return 0;
}