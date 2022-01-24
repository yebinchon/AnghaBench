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
struct bnxt_qplib_res {int /*<<< orphan*/  sgid_tbl; int /*<<< orphan*/  pkey_tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt_qplib_res*,int /*<<< orphan*/ *) ; 

void FUNC2(struct bnxt_qplib_res *res)
{
	FUNC0(&res->pkey_tbl);
	FUNC1(res, &res->sgid_tbl);
}