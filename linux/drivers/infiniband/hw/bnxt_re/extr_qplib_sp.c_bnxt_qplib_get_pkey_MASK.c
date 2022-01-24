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
typedef  int u16 ;
struct bnxt_qplib_res {TYPE_1__* pdev; } ;
struct bnxt_qplib_pkey_tbl {int max; int /*<<< orphan*/ * tbl; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,int) ; 

int FUNC2(struct bnxt_qplib_res *res,
			struct bnxt_qplib_pkey_tbl *pkey_tbl, u16 index,
			u16 *pkey)
{
	if (index == 0xFFFF) {
		*pkey = 0xFFFF;
		return 0;
	}
	if (index >= pkey_tbl->max) {
		FUNC0(&res->pdev->dev,
			"Index %d exceeded PKEY table max (%d)\n",
			index, pkey_tbl->max);
		return -EINVAL;
	}
	FUNC1(pkey, &pkey_tbl->tbl[index], sizeof(*pkey));
	return 0;
}