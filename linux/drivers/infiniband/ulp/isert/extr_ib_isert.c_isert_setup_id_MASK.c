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
struct sockaddr {int dummy; } ;
struct rdma_cm_id {struct sockaddr* context; } ;
struct isert_np {struct iscsi_np* np; } ;
struct iscsi_np {struct rdma_cm_id np_sockaddr; } ;

/* Variables and functions */
 struct rdma_cm_id* FUNC0 (int) ; 
 int /*<<< orphan*/  IB_QPT_RC ; 
 scalar_t__ FUNC1 (struct rdma_cm_id*) ; 
 int FUNC2 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  RDMA_PS_TCP ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  isert_cma_handler ; 
 int /*<<< orphan*/  FUNC3 (char*,struct rdma_cm_id*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (struct rdma_cm_id*,struct sockaddr*) ; 
 struct rdma_cm_id* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct isert_np*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_cm_id*) ; 
 int FUNC8 (struct rdma_cm_id*,int /*<<< orphan*/ ) ; 

struct rdma_cm_id *
FUNC9(struct isert_np *isert_np)
{
	struct iscsi_np *np = isert_np->np;
	struct rdma_cm_id *id;
	struct sockaddr *sa;
	int ret;

	sa = (struct sockaddr *)&np->np_sockaddr;
	FUNC3("ksockaddr: %p, sa: %p\n", &np->np_sockaddr, sa);

	id = FUNC6(&init_net, isert_cma_handler, isert_np,
			    RDMA_PS_TCP, IB_QPT_RC);
	if (FUNC1(id)) {
		FUNC4("rdma_create_id() failed: %ld\n", FUNC2(id));
		ret = FUNC2(id);
		goto out;
	}
	FUNC3("id %p context %p\n", id, id->context);

	ret = FUNC5(id, sa);
	if (ret) {
		FUNC4("rdma_bind_addr() failed: %d\n", ret);
		goto out_id;
	}

	ret = FUNC8(id, 0);
	if (ret) {
		FUNC4("rdma_listen() failed: %d\n", ret);
		goto out_id;
	}

	return id;
out_id:
	FUNC7(id);
out:
	return FUNC0(ret);
}