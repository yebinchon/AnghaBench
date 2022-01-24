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
struct stm32_hash_dev {TYPE_2__* pdata; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {unsigned int algs_info_size; TYPE_1__* algs_info; } ;
struct TYPE_3__ {unsigned int size; int /*<<< orphan*/ * algs_list; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct stm32_hash_dev *hdev)
{
	unsigned int i, j;
	int err;

	for (i = 0; i < hdev->pdata->algs_info_size; i++) {
		for (j = 0; j < hdev->pdata->algs_info[i].size; j++) {
			err = FUNC0(
				&hdev->pdata->algs_info[i].algs_list[j]);
			if (err)
				goto err_algs;
		}
	}

	return 0;
err_algs:
	FUNC2(hdev->dev, "Algo %d : %d failed\n", i, j);
	for (; i--; ) {
		for (; j--;)
			FUNC1(
				&hdev->pdata->algs_info[i].algs_list[j]);
	}

	return err;
}