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
typedef  int /*<<< orphan*/  u16 ;
struct bnxt_qplib_res {TYPE_1__* pdev; } ;
struct bnxt_qplib_pkey_tbl {int active; int max; int /*<<< orphan*/ * tbl; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EALREADY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC3(struct bnxt_qplib_res *res,
			struct bnxt_qplib_pkey_tbl *pkey_tbl, u16 *pkey,
			bool update)
{
	int i, free_idx, rc = 0;

	if (!pkey_tbl) {
		FUNC0(&res->pdev->dev, "PKEY table not allocated\n");
		return -EINVAL;
	}

	/* Do we need a pkey_lock here? */
	if (pkey_tbl->active == pkey_tbl->max) {
		FUNC0(&res->pdev->dev, "PKEY table is full\n");
		return -ENOMEM;
	}
	free_idx = pkey_tbl->max;
	for (i = 0; i < pkey_tbl->max; i++) {
		if (!FUNC1(&pkey_tbl->tbl[i], pkey, sizeof(*pkey)))
			return -EALREADY;
		else if (!pkey_tbl->tbl[i] && free_idx == pkey_tbl->max)
			free_idx = i;
	}
	if (free_idx == pkey_tbl->max) {
		FUNC0(&res->pdev->dev,
			"PKEY table is FULL but count is not MAX??\n");
		return -ENOMEM;
	}
	/* Add PKEY to the pkey_tbl */
	FUNC2(&pkey_tbl->tbl[free_idx], pkey, sizeof(*pkey));
	pkey_tbl->active++;

	/* unlock */
	return rc;
}