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
struct usnic_vnic_res_chunk {int cnt; struct usnic_vnic_res** res; } ;
struct usnic_vnic_res {int /*<<< orphan*/  vnic_idx; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  qp_num; } ;
struct usnic_ib_qp_grp {struct usnic_vnic_res_chunk** res_chunk_list; TYPE_2__* vf; int /*<<< orphan*/  owner_pid; int /*<<< orphan*/  state; TYPE_1__ ibqp; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  vnic; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct usnic_ib_qp_grp *qp_grp, char *buf)
{
	int i, j, n;
	int left;
	char *ptr;
	struct usnic_vnic_res_chunk *res_chunk;
	struct usnic_vnic_res *vnic_res;

	left = PAGE_SIZE;
	ptr = buf;

	n = FUNC1(ptr, left,
			"QPN: %d State: (%s) PID: %u VF Idx: %hu ",
			qp_grp->ibqp.qp_num,
			FUNC2(qp_grp->state),
			qp_grp->owner_pid,
			FUNC3(qp_grp->vf->vnic));
	FUNC0(n, ptr, left);

	for (i = 0; qp_grp->res_chunk_list[i]; i++) {
		res_chunk = qp_grp->res_chunk_list[i];
		for (j = 0; j < res_chunk->cnt; j++) {
			vnic_res = res_chunk->res[j];
			n = FUNC1(ptr, left, "%s[%d] ",
				FUNC4(vnic_res->type),
				vnic_res->vnic_idx);
			FUNC0(n, ptr, left);
		}
	}

	n = FUNC1(ptr, left, "\n");
	FUNC0(n, ptr, left);

	return ptr - buf;
}