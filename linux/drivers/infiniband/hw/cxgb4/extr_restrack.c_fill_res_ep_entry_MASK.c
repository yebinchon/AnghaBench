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
struct c4iw_ep_common {scalar_t__ state; int /*<<< orphan*/  history; int /*<<< orphan*/  flags; int /*<<< orphan*/  mutex; } ;
struct c4iw_ep {scalar_t__ hwtid; scalar_t__ ord; scalar_t__ ird; scalar_t__ emss; scalar_t__ atid; int /*<<< orphan*/  parent_ep; struct c4iw_ep_common com; } ;
struct c4iw_listen_ep {scalar_t__ stid; scalar_t__ backlog; struct c4iw_ep_common com; } ;
union union_ep {struct c4iw_ep ep; struct c4iw_listen_ep lep; } ;
struct sk_buff {int dummy; } ;
struct rdma_restrack_entry {int dummy; } ;
struct rdma_cm_id {int dummy; } ;
struct nlattr {int dummy; } ;
struct iw_cm_id {scalar_t__ provider_data; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ LISTEN ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_DRIVER ; 
 union union_ep* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union union_ep*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct iw_cm_id* FUNC7 (struct rdma_cm_id*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,char*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct sk_buff*,char*,int /*<<< orphan*/ ) ; 
 struct rdma_cm_id* FUNC10 (struct rdma_restrack_entry*) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *msg,
			     struct rdma_restrack_entry *res)
{
	struct rdma_cm_id *cm_id = FUNC10(res);
	struct nlattr *table_attr;
	struct c4iw_ep_common *epcp;
	struct c4iw_listen_ep *listen_ep = NULL;
	struct c4iw_ep *ep = NULL;
	struct iw_cm_id *iw_cm_id;
	union union_ep *uep;

	iw_cm_id = FUNC7(cm_id);
	if (!iw_cm_id)
		return 0;
	epcp = (struct c4iw_ep_common *)iw_cm_id->provider_data;
	if (!epcp)
		return 0;
	uep = FUNC0(1, sizeof(*uep), GFP_KERNEL);
	if (!uep)
		return 0;

	table_attr = FUNC6(msg, RDMA_NLDEV_ATTR_DRIVER);
	if (!table_attr)
		goto err_free_uep;

	/* Get a consistent snapshot */
	FUNC2(&epcp->mutex);
	if (epcp->state == LISTEN) {
		uep->lep = *(struct c4iw_listen_ep *)epcp;
		FUNC3(&epcp->mutex);
		listen_ep = &uep->lep;
		epcp = &listen_ep->com;
	} else {
		uep->ep = *(struct c4iw_ep *)epcp;
		FUNC3(&epcp->mutex);
		ep = &uep->ep;
		epcp = &ep->com;
	}

	if (FUNC8(msg, "state", epcp->state))
		goto err_cancel_table;
	if (FUNC9(msg, "flags", epcp->flags))
		goto err_cancel_table;
	if (FUNC9(msg, "history", epcp->history))
		goto err_cancel_table;

	if (epcp->state == LISTEN) {
		if (FUNC8(msg, "stid", listen_ep->stid))
			goto err_cancel_table;
		if (FUNC8(msg, "backlog", listen_ep->backlog))
			goto err_cancel_table;
	} else {
		if (FUNC8(msg, "hwtid", ep->hwtid))
			goto err_cancel_table;
		if (FUNC8(msg, "ord", ep->ord))
			goto err_cancel_table;
		if (FUNC8(msg, "ird", ep->ird))
			goto err_cancel_table;
		if (FUNC8(msg, "emss", ep->emss))
			goto err_cancel_table;

		if (!ep->parent_ep && FUNC8(msg, "atid",
							     ep->atid))
			goto err_cancel_table;
	}
	FUNC5(msg, table_attr);
	FUNC1(uep);
	return 0;

err_cancel_table:
	FUNC4(msg, table_attr);
err_free_uep:
	FUNC1(uep);
	return -EMSGSIZE;
}