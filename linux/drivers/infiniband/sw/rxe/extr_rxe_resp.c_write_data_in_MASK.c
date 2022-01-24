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
struct TYPE_2__ {int va; int resid; int /*<<< orphan*/  mr; } ;
struct rxe_qp {TYPE_1__ resp; } ;
struct rxe_pkt_info {int dummy; } ;
typedef  enum resp_states { ____Placeholder_resp_states } resp_states ;

/* Variables and functions */
 int RESPST_ERR_RKEY_VIOLATION ; 
 int RESPST_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct rxe_pkt_info*) ; 
 int FUNC1 (struct rxe_pkt_info*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  to_mem_obj ; 

__attribute__((used)) static enum resp_states FUNC3(struct rxe_qp *qp,
				      struct rxe_pkt_info *pkt)
{
	enum resp_states rc = RESPST_NONE;
	int	err;
	int data_len = FUNC1(pkt);

	err = FUNC2(qp->resp.mr, qp->resp.va, FUNC0(pkt),
			   data_len, to_mem_obj, NULL);
	if (err) {
		rc = RESPST_ERR_RKEY_VIOLATION;
		goto out;
	}

	qp->resp.va += data_len;
	qp->resp.resid -= data_len;

out:
	return rc;
}