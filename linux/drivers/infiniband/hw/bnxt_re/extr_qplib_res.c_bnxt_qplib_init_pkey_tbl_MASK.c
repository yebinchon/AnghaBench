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
typedef  int u16 ;
struct bnxt_qplib_res {int dummy; } ;
struct bnxt_qplib_pkey_tbl {int max; int /*<<< orphan*/  tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_qplib_res*,struct bnxt_qplib_pkey_tbl*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct bnxt_qplib_res *res,
				     struct bnxt_qplib_pkey_tbl *pkey_tbl)
{
	u16 pkey = 0xFFFF;

	FUNC1(pkey_tbl->tbl, 0, sizeof(u16) * pkey_tbl->max);

	/* pkey default = 0xFFFF */
	FUNC0(res, pkey_tbl, &pkey, false);
}