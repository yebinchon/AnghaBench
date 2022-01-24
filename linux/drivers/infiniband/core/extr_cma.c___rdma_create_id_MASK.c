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
struct TYPE_5__ {int /*<<< orphan*/  net; } ;
struct TYPE_6__ {TYPE_1__ dev_addr; } ;
struct TYPE_7__ {TYPE_2__ addr; } ;
struct rdma_cm_id {int ps; int qp_type; TYPE_3__ route; int /*<<< orphan*/  event_handler; void* context; } ;
struct TYPE_8__ {int /*<<< orphan*/  type; } ;
struct rdma_id_private {int tos_set; int timeout_set; int seq_num; struct rdma_cm_id id; int /*<<< orphan*/  mc_list; int /*<<< orphan*/  listen_list; int /*<<< orphan*/  handler_mutex; int /*<<< orphan*/  refcount; int /*<<< orphan*/  comp; int /*<<< orphan*/  qp_mutex; int /*<<< orphan*/  lock; int /*<<< orphan*/  gid_type; int /*<<< orphan*/  state; TYPE_4__ res; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  rdma_cm_event_handler ;
typedef  enum rdma_ucm_port_space { ____Placeholder_rdma_ucm_port_space } rdma_ucm_port_space ;
typedef  enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct rdma_cm_id* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_GID_TYPE_IB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RDMA_CM_IDLE ; 
 int /*<<< orphan*/  RDMA_RESTRACK_CM_ID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct rdma_id_private* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

struct rdma_cm_id *FUNC10(struct net *net,
				    rdma_cm_event_handler event_handler,
				    void *context, enum rdma_ucm_port_space ps,
				    enum ib_qp_type qp_type, const char *caller)
{
	struct rdma_id_private *id_priv;

	id_priv = FUNC6(sizeof *id_priv, GFP_KERNEL);
	if (!id_priv)
		return FUNC0(-ENOMEM);

	FUNC8(&id_priv->res, caller);
	id_priv->res.type = RDMA_RESTRACK_CM_ID;
	id_priv->state = RDMA_CM_IDLE;
	id_priv->id.context = context;
	id_priv->id.event_handler = event_handler;
	id_priv->id.ps = ps;
	id_priv->id.qp_type = qp_type;
	id_priv->tos_set = false;
	id_priv->timeout_set = false;
	id_priv->gid_type = IB_GID_TYPE_IB;
	FUNC9(&id_priv->lock);
	FUNC7(&id_priv->qp_mutex);
	FUNC5(&id_priv->comp);
	FUNC2(&id_priv->refcount, 1);
	FUNC7(&id_priv->handler_mutex);
	FUNC1(&id_priv->listen_list);
	FUNC1(&id_priv->mc_list);
	FUNC4(&id_priv->seq_num, sizeof id_priv->seq_num);
	id_priv->id.route.addr.dev_addr.net = FUNC3(net);
	id_priv->seq_num &= 0x00ffffff;

	return &id_priv->id;
}