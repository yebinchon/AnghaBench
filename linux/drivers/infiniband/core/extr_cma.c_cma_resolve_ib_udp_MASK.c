#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_9__ {struct ib_cm_id* ib; } ;
struct TYPE_6__ {int /*<<< orphan*/  sgid_attr; } ;
struct TYPE_7__ {TYPE_1__ dev_addr; } ;
struct TYPE_8__ {TYPE_2__ addr; int /*<<< orphan*/  path_rec; } ;
struct TYPE_10__ {TYPE_3__ route; int /*<<< orphan*/  device; } ;
struct rdma_id_private {TYPE_4__ cm_id; TYPE_5__ id; } ;
struct rdma_conn_param {int private_data_len; int /*<<< orphan*/  private_data; } ;
struct ib_cm_sidr_req_param {int private_data_len; int timeout_ms; int /*<<< orphan*/  max_cm_retries; int /*<<< orphan*/  service_id; int /*<<< orphan*/  sgid_attr; int /*<<< orphan*/  path; void* private_data; } ;
struct ib_cm_id {int dummy; } ;

/* Variables and functions */
 int CMA_CM_RESPONSE_TIMEOUT ; 
 int /*<<< orphan*/  CMA_MAX_CM_RETRIES ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct ib_cm_id*) ; 
 int FUNC1 (struct ib_cm_id*) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_id_private*) ; 
 int FUNC3 (void*,struct rdma_id_private*) ; 
 int /*<<< orphan*/  cma_sidr_rep_handler ; 
 int FUNC4 (struct rdma_id_private*) ; 
 struct ib_cm_id* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_cm_id*) ; 
 int FUNC7 (struct ib_cm_id*,struct ib_cm_sidr_req_param*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct ib_cm_sidr_req_param*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct rdma_id_private *id_priv,
			      struct rdma_conn_param *conn_param)
{
	struct ib_cm_sidr_req_param req;
	struct ib_cm_id	*id;
	void *private_data;
	u8 offset;
	int ret;

	FUNC11(&req, 0, sizeof req);
	offset = FUNC4(id_priv);
	req.private_data_len = offset + conn_param->private_data_len;
	if (req.private_data_len < conn_param->private_data_len)
		return -EINVAL;

	if (req.private_data_len) {
		private_data = FUNC9(req.private_data_len, GFP_ATOMIC);
		if (!private_data)
			return -ENOMEM;
	} else {
		private_data = NULL;
	}

	if (conn_param->private_data && conn_param->private_data_len)
		FUNC10(private_data + offset, conn_param->private_data,
		       conn_param->private_data_len);

	if (private_data) {
		ret = FUNC3(private_data, id_priv);
		if (ret)
			goto out;
		req.private_data = private_data;
	}

	id = FUNC5(id_priv->id.device, cma_sidr_rep_handler,
			     id_priv);
	if (FUNC0(id)) {
		ret = FUNC1(id);
		goto out;
	}
	id_priv->cm_id.ib = id;

	req.path = id_priv->id.route.path_rec;
	req.sgid_attr = id_priv->id.route.addr.dev_addr.sgid_attr;
	req.service_id = FUNC12(&id_priv->id, FUNC2(id_priv));
	req.timeout_ms = 1 << (CMA_CM_RESPONSE_TIMEOUT - 8);
	req.max_cm_retries = CMA_MAX_CM_RETRIES;

	ret = FUNC7(id_priv->cm_id.ib, &req);
	if (ret) {
		FUNC6(id_priv->cm_id.ib);
		id_priv->cm_id.ib = NULL;
	}
out:
	FUNC8(private_data);
	return ret;
}