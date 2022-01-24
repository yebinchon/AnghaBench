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
struct TYPE_3__ {struct iw_cm_id* iw; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct rdma_id_private {TYPE_1__ cm_id; int /*<<< orphan*/  tos_set; int /*<<< orphan*/  tos; TYPE_2__ id; } ;
struct iw_cm_id {int /*<<< orphan*/  local_addr; int /*<<< orphan*/  tos_set; int /*<<< orphan*/  tos; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct iw_cm_id*) ; 
 int FUNC1 (struct iw_cm_id*) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_id_private*) ; 
 int FUNC3 (struct iw_cm_id*,int) ; 
 int /*<<< orphan*/  iw_conn_req_handler ; 
 struct iw_cm_id* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct iw_cm_id*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct rdma_id_private *id_priv, int backlog)
{
	int ret;
	struct iw_cm_id	*id;

	id = FUNC4(id_priv->id.device,
			     iw_conn_req_handler,
			     id_priv);
	if (FUNC0(id))
		return FUNC1(id);

	id->tos = id_priv->tos;
	id->tos_set = id_priv->tos_set;
	id_priv->cm_id.iw = id;

	FUNC6(&id_priv->cm_id.iw->local_addr, FUNC2(id_priv),
	       FUNC7(FUNC2(id_priv)));

	ret = FUNC3(id_priv->cm_id.iw, backlog);

	if (ret) {
		FUNC5(id_priv->cm_id.iw);
		id_priv->cm_id.iw = NULL;
	}

	return ret;
}