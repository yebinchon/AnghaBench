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
typedef  int u32 ;
struct sa_path_rec {int dummy; } ;
struct net_device {int dummy; } ;
struct ipoib_dev_priv {TYPE_1__* qp; } ;
struct ipoib_cm_data {void* mtu; void* qpn; } ;
struct ib_qp {int /*<<< orphan*/  qp_type; int /*<<< orphan*/  qp_num; } ;
struct ib_cm_req_param {int private_data_len; int responder_resources; int remote_cm_response_timeout; int local_cm_response_timeout; int max_cm_retries; int /*<<< orphan*/  srq; scalar_t__ rnr_retry_count; scalar_t__ retry_count; scalar_t__ starting_psn; scalar_t__ flow_control; struct ipoib_cm_data* private_data; int /*<<< orphan*/  qp_type; int /*<<< orphan*/  qp_num; int /*<<< orphan*/  service_id; int /*<<< orphan*/ * alternate_path; struct sa_path_rec* primary_path; } ;
struct ib_cm_id {int dummy; } ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_2__ {int /*<<< orphan*/  qp_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_CM_BUF_SIZE ; 
 int IPOIB_CM_IETF_ID ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ib_cm_id*,struct ib_cm_req_param*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct ipoib_dev_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
			     struct ib_cm_id *id, struct ib_qp *qp,
			     u32 qpn,
			     struct sa_path_rec *pathrec)
{
	struct ipoib_dev_priv *priv = FUNC4(dev);
	struct ipoib_cm_data data = {};
	struct ib_cm_req_param req = {};

	data.qpn = FUNC0(priv->qp->qp_num);
	data.mtu = FUNC0(IPOIB_CM_BUF_SIZE);

	req.primary_path		= pathrec;
	req.alternate_path		= NULL;
	req.service_id			= FUNC1(IPOIB_CM_IETF_ID | qpn);
	req.qp_num			= qp->qp_num;
	req.qp_type			= qp->qp_type;
	req.private_data		= &data;
	req.private_data_len		= sizeof(data);
	req.flow_control		= 0;

	req.starting_psn		= 0; /* FIXME */

	/*
	 * Pick some arbitrary defaults here; we could make these
	 * module parameters if anyone cared about setting them.
	 */
	req.responder_resources		= 4;
	req.remote_cm_response_timeout	= 20;
	req.local_cm_response_timeout	= 20;
	req.retry_count			= 0; /* RFC draft warns against retries */
	req.rnr_retry_count		= 0; /* RFC draft warns against retries */
	req.max_cm_retries		= 15;
	req.srq				= FUNC3(dev);
	return FUNC2(id, &req);
}