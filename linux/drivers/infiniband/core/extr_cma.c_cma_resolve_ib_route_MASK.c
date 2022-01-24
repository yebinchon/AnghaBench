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
struct rdma_route {struct cma_work* path_rec; } ;
struct TYPE_2__ {struct rdma_route route; } ;
struct rdma_id_private {TYPE_1__ id; } ;
struct cma_work {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct cma_work*,struct rdma_id_private*) ; 
 int FUNC1 (struct rdma_id_private*,unsigned long,struct cma_work*) ; 
 int /*<<< orphan*/  FUNC2 (struct cma_work*) ; 
 struct cma_work* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct cma_work* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rdma_id_private *id_priv,
				unsigned long timeout_ms)
{
	struct rdma_route *route = &id_priv->id.route;
	struct cma_work *work;
	int ret;

	work = FUNC4(sizeof *work, GFP_KERNEL);
	if (!work)
		return -ENOMEM;

	FUNC0(work, id_priv);

	route->path_rec = FUNC3(sizeof *route->path_rec, GFP_KERNEL);
	if (!route->path_rec) {
		ret = -ENOMEM;
		goto err1;
	}

	ret = FUNC1(id_priv, timeout_ms, work);
	if (ret)
		goto err2;

	return 0;
err2:
	FUNC2(route->path_rec);
	route->path_rec = NULL;
err1:
	FUNC2(work);
	return ret;
}