#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ucma_context {TYPE_1__* cm_id; } ;
struct sa_path_rec {int /*<<< orphan*/  event; int /*<<< orphan*/  rec_type; } ;
struct rdma_cm_event {int /*<<< orphan*/  event; int /*<<< orphan*/  rec_type; } ;
struct ib_path_rec_data {int flags; int /*<<< orphan*/  path_rec; } ;
typedef  int /*<<< orphan*/  sa_path ;
struct TYPE_3__ {int /*<<< orphan*/  port_num; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EINVAL ; 
 int IB_PATH_BIDIRECTIONAL ; 
 int IB_PATH_GMP ; 
 int IB_PATH_PRIMARY ; 
 int /*<<< orphan*/  RDMA_CM_EVENT_ROUTE_RESOLVED ; 
 int /*<<< orphan*/  SA_PATH_REC_TYPE_IB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sa_path_rec*) ; 
 int /*<<< orphan*/  FUNC1 (struct sa_path_rec*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,struct sa_path_rec*) ; 
 int /*<<< orphan*/  FUNC4 (struct sa_path_rec*,struct sa_path_rec*) ; 
 int FUNC5 (TYPE_1__*,struct sa_path_rec*) ; 

__attribute__((used)) static int FUNC6(struct ucma_context *ctx,
			    struct ib_path_rec_data *path_data, size_t optlen)
{
	struct sa_path_rec sa_path;
	struct rdma_cm_event event;
	int ret;

	if (optlen % sizeof(*path_data))
		return -EINVAL;

	for (; optlen; optlen -= sizeof(*path_data), path_data++) {
		if (path_data->flags == (IB_PATH_GMP | IB_PATH_PRIMARY |
					 IB_PATH_BIDIRECTIONAL))
			break;
	}

	if (!optlen)
		return -EINVAL;

	if (!ctx->cm_id->device)
		return -EINVAL;

	FUNC1(&sa_path, 0, sizeof(sa_path));

	sa_path.rec_type = SA_PATH_REC_TYPE_IB;
	FUNC0(path_data->path_rec, &sa_path);

	if (FUNC2(ctx->cm_id->device, ctx->cm_id->port_num)) {
		struct sa_path_rec opa;

		FUNC4(&opa, &sa_path);
		ret = FUNC3(ctx->cm_id, &opa);
	} else {
		ret = FUNC3(ctx->cm_id, &sa_path);
	}
	if (ret)
		return ret;

	FUNC1(&event, 0, sizeof event);
	event.event = RDMA_CM_EVENT_ROUTE_RESOLVED;
	return FUNC5(ctx->cm_id, &event);
}