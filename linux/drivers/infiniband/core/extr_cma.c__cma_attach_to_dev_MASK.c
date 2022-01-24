#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ kern_name; } ;
struct TYPE_8__ {int /*<<< orphan*/  transport; } ;
struct TYPE_9__ {TYPE_1__ dev_addr; } ;
struct TYPE_10__ {TYPE_2__ addr; } ;
struct TYPE_12__ {TYPE_3__ route; TYPE_4__* device; } ;
struct rdma_id_private {TYPE_6__ res; int /*<<< orphan*/  list; TYPE_5__ id; struct cma_device* cma_dev; } ;
struct cma_device {int /*<<< orphan*/  id_list; TYPE_4__* device; } ;
struct TYPE_11__ {int /*<<< orphan*/  node_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cma_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 

__attribute__((used)) static void FUNC5(struct rdma_id_private *id_priv,
			       struct cma_device *cma_dev)
{
	FUNC0(cma_dev);
	id_priv->cma_dev = cma_dev;
	id_priv->id.device = cma_dev->device;
	id_priv->id.route.addr.dev_addr.transport =
		FUNC2(cma_dev->device->node_type);
	FUNC1(&id_priv->list, &cma_dev->id_list);
	if (id_priv->res.kern_name)
		FUNC3(&id_priv->res);
	else
		FUNC4(&id_priv->res);
}