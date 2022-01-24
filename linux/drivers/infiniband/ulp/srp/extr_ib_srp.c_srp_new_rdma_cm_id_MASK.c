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
struct TYPE_3__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; scalar_t__ src_specified; } ;
struct srp_target_port {TYPE_1__ rdma_cm; int /*<<< orphan*/  net; } ;
struct TYPE_4__ {int /*<<< orphan*/  cm_id; } ;
struct srp_rdma_ch {int status; TYPE_2__ rdma_cm; int /*<<< orphan*/  done; struct srp_target_port* target; } ;
struct sockaddr {int dummy; } ;
struct rdma_cm_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_QPT_RC ; 
 scalar_t__ FUNC0 (struct rdma_cm_id*) ; 
 int FUNC1 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  RDMA_PS_TCP ; 
 int /*<<< orphan*/  SRP_PATH_REC_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int,...) ; 
 struct rdma_cm_id* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct srp_rdma_ch*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_cm_id*) ; 
 int FUNC6 (struct rdma_cm_id*,struct sockaddr*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  srp_rdma_cm_handler ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct rdma_cm_id*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct srp_rdma_ch *ch)
{
	struct srp_target_port *target = ch->target;
	struct rdma_cm_id *new_cm_id;
	int ret;

	new_cm_id = FUNC4(target->net, srp_rdma_cm_handler, ch,
				   RDMA_PS_TCP, IB_QPT_RC);
	if (FUNC0(new_cm_id)) {
		ret = FUNC1(new_cm_id);
		new_cm_id = NULL;
		goto out;
	}

	FUNC2(&ch->done);
	ret = FUNC6(new_cm_id, target->rdma_cm.src_specified ?
				(struct sockaddr *)&target->rdma_cm.src : NULL,
				(struct sockaddr *)&target->rdma_cm.dst,
				SRP_PATH_REC_TIMEOUT_MS);
	if (ret) {
		FUNC3("No route available from %pIS to %pIS (%d)\n",
		       &target->rdma_cm.src, target->rdma_cm.dst, ret);
		goto out;
	}
	ret = FUNC8(&ch->done);
	if (ret < 0)
		goto out;

	ret = ch->status;
	if (ret) {
		FUNC3("Resolving address %pIS failed (%d)\n",
		       &target->rdma_cm.dst, ret);
		goto out;
	}

	FUNC7(ch->rdma_cm.cm_id, new_cm_id);

out:
	if (new_cm_id)
		FUNC5(new_cm_id);

	return ret;
}