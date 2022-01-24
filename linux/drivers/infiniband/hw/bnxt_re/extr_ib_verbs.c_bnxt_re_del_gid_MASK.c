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
typedef  int u16 ;
struct in6_addr {int dummy; } ;
struct ib_gid_attr {int /*<<< orphan*/  device; } ;
struct bnxt_re_gid_ctx {size_t idx; int refcnt; } ;
struct bnxt_qplib_sgid_tbl {size_t max; struct bnxt_re_gid_ctx** ctx; TYPE_2__* tbl; scalar_t__ active; } ;
struct TYPE_3__ {struct bnxt_qplib_sgid_tbl sgid_tbl; } ;
struct bnxt_re_dev {scalar_t__ qp1_sqp; TYPE_1__ qplib_res; } ;
struct bnxt_qplib_gid {int dummy; } ;
struct TYPE_4__ {int vlan_id; struct bnxt_qplib_gid gid; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int FUNC0 (struct bnxt_qplib_sgid_tbl*,struct bnxt_qplib_gid*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ibdev ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_re_gid_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnxt_re_dev*) ; 
 scalar_t__ FUNC5 (struct in6_addr*) ; 
 struct bnxt_re_dev* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(const struct ib_gid_attr *attr, void **context)
{
	int rc = 0;
	struct bnxt_re_gid_ctx *ctx, **ctx_tbl;
	struct bnxt_re_dev *rdev = FUNC6(attr->device, ibdev);
	struct bnxt_qplib_sgid_tbl *sgid_tbl = &rdev->qplib_res.sgid_tbl;
	struct bnxt_qplib_gid *gid_to_del;
	u16 vlan_id = 0xFFFF;

	/* Delete the entry from the hardware */
	ctx = *context;
	if (!ctx)
		return -EINVAL;

	if (sgid_tbl && sgid_tbl->active) {
		if (ctx->idx >= sgid_tbl->max)
			return -EINVAL;
		gid_to_del = &sgid_tbl->tbl[ctx->idx].gid;
		vlan_id = sgid_tbl->tbl[ctx->idx].vlan_id;
		/* DEL_GID is called in WQ context(netdevice_event_work_handler)
		 * or via the ib_unregister_device path. In the former case QP1
		 * may not be destroyed yet, in which case just return as FW
		 * needs that entry to be present and will fail it's deletion.
		 * We could get invoked again after QP1 is destroyed OR get an
		 * ADD_GID call with a different GID value for the same index
		 * where we issue MODIFY_GID cmd to update the GID entry -- TBD
		 */
		if (ctx->idx == 0 &&
		    FUNC5((struct in6_addr *)gid_to_del) &&
		    ctx->refcnt == 1 && rdev->qp1_sqp) {
			FUNC1(FUNC4(rdev),
				"Trying to delete GID0 while QP1 is alive\n");
			return -EFAULT;
		}
		ctx->refcnt--;
		if (!ctx->refcnt) {
			rc = FUNC0(sgid_tbl, gid_to_del,
						 vlan_id,  true);
			if (rc) {
				FUNC2(FUNC4(rdev),
					"Failed to remove GID: %#x", rc);
			} else {
				ctx_tbl = sgid_tbl->ctx;
				ctx_tbl[ctx->idx] = NULL;
				FUNC3(ctx);
			}
		}
	} else {
		return -EINVAL;
	}
	return rc;
}