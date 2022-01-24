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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct bnxt_qplib_sgid_tbl {int /*<<< orphan*/ * tbl; int /*<<< orphan*/ * hw_id; int /*<<< orphan*/ * ctx; int /*<<< orphan*/  max; void* vlan; } ;
struct bnxt_qplib_res {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct bnxt_qplib_res *res,
				     struct bnxt_qplib_sgid_tbl *sgid_tbl,
				     u16 max)
{
	sgid_tbl->tbl = FUNC0(max, sizeof(*sgid_tbl->tbl), GFP_KERNEL);
	if (!sgid_tbl->tbl)
		return -ENOMEM;

	sgid_tbl->hw_id = FUNC0(max, sizeof(u16), GFP_KERNEL);
	if (!sgid_tbl->hw_id)
		goto out_free1;

	sgid_tbl->ctx = FUNC0(max, sizeof(void *), GFP_KERNEL);
	if (!sgid_tbl->ctx)
		goto out_free2;

	sgid_tbl->vlan = FUNC0(max, sizeof(u8), GFP_KERNEL);
	if (!sgid_tbl->vlan)
		goto out_free3;

	sgid_tbl->max = max;
	return 0;
out_free3:
	FUNC1(sgid_tbl->ctx);
	sgid_tbl->ctx = NULL;
out_free2:
	FUNC1(sgid_tbl->hw_id);
	sgid_tbl->hw_id = NULL;
out_free1:
	FUNC1(sgid_tbl->tbl);
	sgid_tbl->tbl = NULL;
	return -ENOMEM;
}