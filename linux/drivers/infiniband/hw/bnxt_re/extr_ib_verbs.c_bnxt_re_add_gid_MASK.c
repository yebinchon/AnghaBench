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
typedef  size_t u32 ;
typedef  int u16 ;
struct ib_gid_attr {int /*<<< orphan*/  gid; int /*<<< orphan*/  device; } ;
struct bnxt_re_gid_ctx {int refcnt; size_t idx; } ;
struct bnxt_qplib_sgid_tbl {struct bnxt_re_gid_ctx** ctx; } ;
struct TYPE_4__ {TYPE_1__* netdev; struct bnxt_qplib_sgid_tbl sgid_tbl; } ;
struct bnxt_re_dev {TYPE_2__ qplib_res; } ;
struct bnxt_qplib_gid {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int EALREADY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct bnxt_qplib_sgid_tbl*,struct bnxt_qplib_gid*,int /*<<< orphan*/ ,int,int,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ibdev ; 
 struct bnxt_re_gid_ctx* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_re_dev*) ; 
 int FUNC4 (struct ib_gid_attr const*,int*,int /*<<< orphan*/ *) ; 
 struct bnxt_re_dev* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(const struct ib_gid_attr *attr, void **context)
{
	int rc;
	u32 tbl_idx = 0;
	u16 vlan_id = 0xFFFF;
	struct bnxt_re_gid_ctx *ctx, **ctx_tbl;
	struct bnxt_re_dev *rdev = FUNC5(attr->device, ibdev);
	struct bnxt_qplib_sgid_tbl *sgid_tbl = &rdev->qplib_res.sgid_tbl;

	rc = FUNC4(attr, &vlan_id, NULL);
	if (rc)
		return rc;

	rc = FUNC0(sgid_tbl, (struct bnxt_qplib_gid *)&attr->gid,
				 rdev->qplib_res.netdev->dev_addr,
				 vlan_id, true, &tbl_idx);
	if (rc == -EALREADY) {
		ctx_tbl = sgid_tbl->ctx;
		ctx_tbl[tbl_idx]->refcnt++;
		*context = ctx_tbl[tbl_idx];
		return 0;
	}

	if (rc < 0) {
		FUNC1(FUNC3(rdev), "Failed to add GID: %#x", rc);
		return rc;
	}

	ctx = FUNC2(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;
	ctx_tbl = sgid_tbl->ctx;
	ctx->idx = tbl_idx;
	ctx->refcnt = 1;
	ctx_tbl[tbl_idx] = ctx;
	*context = ctx;

	return rc;
}