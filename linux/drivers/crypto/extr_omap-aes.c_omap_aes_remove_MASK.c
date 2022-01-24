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
struct platform_device {int dummy; } ;
struct omap_aes_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  done_task; int /*<<< orphan*/  engine; TYPE_3__* pdata; int /*<<< orphan*/  list; } ;
struct aead_alg {int dummy; } ;
struct TYPE_6__ {int algs_info_size; TYPE_2__* aead_algs_info; TYPE_1__* algs_info; } ;
struct TYPE_5__ {int size; struct aead_alg* algs_list; } ;
struct TYPE_4__ {int registered; int /*<<< orphan*/ * algs_list; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aead_alg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC4 (struct omap_aes_dev*) ; 
 struct omap_aes_dev* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct omap_aes_dev *dd = FUNC5(pdev);
	struct aead_alg *aalg;
	int i, j;

	if (!dd)
		return -ENODEV;

	FUNC7(&list_lock);
	FUNC3(&dd->list);
	FUNC8(&list_lock);

	for (i = dd->pdata->algs_info_size - 1; i >= 0; i--)
		for (j = dd->pdata->algs_info[i].registered - 1; j >= 0; j--)
			FUNC2(
					&dd->pdata->algs_info[i].algs_list[j]);

	for (i = dd->pdata->aead_algs_info->size - 1; i >= 0; i--) {
		aalg = &dd->pdata->aead_algs_info->algs_list[i];
		FUNC1(aalg);
	}

	FUNC0(dd->engine);

	FUNC9(&dd->done_task);
	FUNC4(dd);
	FUNC6(dd->dev);
	dd = NULL;

	return 0;
}