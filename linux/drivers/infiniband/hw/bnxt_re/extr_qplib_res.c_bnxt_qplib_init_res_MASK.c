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
struct bnxt_qplib_res {int /*<<< orphan*/  pkey_tbl; int /*<<< orphan*/  netdev; int /*<<< orphan*/  sgid_tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_qplib_res*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(struct bnxt_qplib_res *res)
{
	FUNC1(&res->sgid_tbl, res->netdev);
	FUNC0(res, &res->pkey_tbl);

	return 0;
}