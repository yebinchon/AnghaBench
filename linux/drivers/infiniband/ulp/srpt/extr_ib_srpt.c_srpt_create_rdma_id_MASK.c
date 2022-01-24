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
struct rdma_cm_id {int dummy; } ;
typedef  int /*<<< orphan*/  addr_str ;

/* Variables and functions */
 struct rdma_cm_id* FUNC0 (int) ; 
 int /*<<< orphan*/  IB_QPT_RC ; 
 scalar_t__ FUNC1 (struct rdma_cm_id*) ; 
 int FUNC2 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  RDMA_PS_TCP ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (struct rdma_cm_id*,struct sockaddr*) ; 
 struct rdma_cm_id* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_cm_id*) ; 
 int FUNC7 (struct rdma_cm_id*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,struct sockaddr*) ; 
 int /*<<< orphan*/  srpt_rdma_cm_handler ; 

__attribute__((used)) static struct rdma_cm_id *FUNC9(struct sockaddr *listen_addr)
{
	struct rdma_cm_id *rdma_cm_id;
	int ret;

	rdma_cm_id = FUNC5(&init_net, srpt_rdma_cm_handler,
				    NULL, RDMA_PS_TCP, IB_QPT_RC);
	if (FUNC1(rdma_cm_id)) {
		FUNC3("RDMA/CM ID creation failed: %ld\n",
		       FUNC2(rdma_cm_id));
		goto out;
	}

	ret = FUNC4(rdma_cm_id, listen_addr);
	if (ret) {
		char addr_str[64];

		FUNC8(addr_str, sizeof(addr_str), "%pISp", listen_addr);
		FUNC3("Binding RDMA/CM ID to address %s failed: %d\n",
		       addr_str, ret);
		FUNC6(rdma_cm_id);
		rdma_cm_id = FUNC0(ret);
		goto out;
	}

	ret = FUNC7(rdma_cm_id, 128);
	if (ret) {
		FUNC3("rdma_listen() failed: %d\n", ret);
		FUNC6(rdma_cm_id);
		rdma_cm_id = FUNC0(ret);
	}

out:
	return rdma_cm_id;
}