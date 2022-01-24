#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct omap_sham_dev {int /*<<< orphan*/  dma_lch; int /*<<< orphan*/  polling_mode; int /*<<< orphan*/  done_task; TYPE_2__* pdata; int /*<<< orphan*/  list; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int algs_info_size; TYPE_1__* algs_info; } ;
struct TYPE_4__ {int registered; int /*<<< orphan*/ * algs_list; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct omap_sham_dev* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__ sham ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct omap_sham_dev *dd;
	int i, j;

	dd = FUNC3(pdev);
	if (!dd)
		return -ENODEV;
	FUNC5(&sham.lock);
	FUNC2(&dd->list);
	FUNC6(&sham.lock);
	for (i = dd->pdata->algs_info_size - 1; i >= 0; i--)
		for (j = dd->pdata->algs_info[i].registered - 1; j >= 0; j--)
			FUNC0(
					&dd->pdata->algs_info[i].algs_list[j]);
	FUNC7(&dd->done_task);
	FUNC4(&pdev->dev);

	if (!dd->polling_mode)
		FUNC1(dd->dma_lch);

	return 0;
}