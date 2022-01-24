#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct i40iw_cqp {int /*<<< orphan*/  sc_cqp; } ;
struct i40iw_device {struct i40iw_cqp cqp; } ;
struct TYPE_8__ {int /*<<< orphan*/  op_ret_val; } ;
struct TYPE_5__ {uintptr_t scratch; int /*<<< orphan*/ * cqp; } ;
struct TYPE_6__ {TYPE_1__ alloc_local_mac_ipaddr_entry; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct cqp_commands_info {int post_sq; TYPE_3__ in; int /*<<< orphan*/  cqp_cmd; } ;
struct i40iw_cqp_request {TYPE_4__ compl_info; struct cqp_commands_info info; int /*<<< orphan*/  refcount; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int I40IW_ERR_NO_MEMORY ; 
 int /*<<< orphan*/  OP_ALLOC_LOCAL_MAC_IPADDR_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct i40iw_cqp_request* FUNC1 (struct i40iw_cqp*,int) ; 
 int FUNC2 (struct i40iw_device*,struct i40iw_cqp_request*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40iw_cqp*,struct i40iw_cqp_request*) ; 

__attribute__((used)) static enum i40iw_status_code FUNC5(struct i40iw_device *iwdev,
								 u16 *mac_ip_tbl_idx)
{
	struct i40iw_cqp *iwcqp = &iwdev->cqp;
	struct i40iw_cqp_request *cqp_request;
	struct cqp_commands_info *cqp_info;
	enum i40iw_status_code status = 0;

	cqp_request = FUNC1(iwcqp, true);
	if (!cqp_request) {
		FUNC3("cqp_request memory failed\n");
		return I40IW_ERR_NO_MEMORY;
	}

	/* increment refcount, because we need the cqp request ret value */
	FUNC0(&cqp_request->refcount);

	cqp_info = &cqp_request->info;
	cqp_info->cqp_cmd = OP_ALLOC_LOCAL_MAC_IPADDR_ENTRY;
	cqp_info->post_sq = 1;
	cqp_info->in.u.alloc_local_mac_ipaddr_entry.cqp = &iwcqp->sc_cqp;
	cqp_info->in.u.alloc_local_mac_ipaddr_entry.scratch = (uintptr_t)cqp_request;
	status = FUNC2(iwdev, cqp_request);
	if (!status)
		*mac_ip_tbl_idx = cqp_request->compl_info.op_ret_val;
	else
		FUNC3("CQP-OP Alloc MAC Ip entry fail");
	/* decrement refcount and free the cqp request, if no longer used */
	FUNC4(iwcqp, cqp_request);
	return status;
}