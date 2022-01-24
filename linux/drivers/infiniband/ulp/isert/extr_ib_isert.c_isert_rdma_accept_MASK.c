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
struct rdma_conn_param {int retry_count; int rnr_retry_count; int flags; int private_data_len; void* private_data; int /*<<< orphan*/  initiator_depth; } ;
struct rdma_cm_id {int dummy; } ;
struct isert_conn {int /*<<< orphan*/  snd_w_inv; int /*<<< orphan*/  initiator_depth; struct rdma_cm_id* cm_id; } ;
struct iser_cm_hdr {int retry_count; int rnr_retry_count; int flags; int private_data_len; void* private_data; int /*<<< orphan*/  initiator_depth; } ;
typedef  int /*<<< orphan*/  rsp_hdr ;

/* Variables and functions */
 int ISERT_SEND_W_INV_NOT_USED ; 
 int ISERT_ZBVA_NOT_USED ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_conn_param*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct rdma_cm_id*,struct rdma_conn_param*) ; 

__attribute__((used)) static int
FUNC3(struct isert_conn *isert_conn)
{
	struct rdma_cm_id *cm_id = isert_conn->cm_id;
	struct rdma_conn_param cp;
	int ret;
	struct iser_cm_hdr rsp_hdr;

	FUNC1(&cp, 0, sizeof(struct rdma_conn_param));
	cp.initiator_depth = isert_conn->initiator_depth;
	cp.retry_count = 7;
	cp.rnr_retry_count = 7;

	FUNC1(&rsp_hdr, 0, sizeof(rsp_hdr));
	rsp_hdr.flags = ISERT_ZBVA_NOT_USED;
	if (!isert_conn->snd_w_inv)
		rsp_hdr.flags = rsp_hdr.flags | ISERT_SEND_W_INV_NOT_USED;
	cp.private_data = (void *)&rsp_hdr;
	cp.private_data_len = sizeof(rsp_hdr);

	ret = FUNC2(cm_id, &cp);
	if (ret) {
		FUNC0("rdma_accept() failed with: %d\n", ret);
		return ret;
	}

	return 0;
}