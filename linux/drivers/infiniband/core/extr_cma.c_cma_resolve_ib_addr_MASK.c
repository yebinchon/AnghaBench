#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union ib_gid {int dummy; } ib_gid ;
struct sockaddr_ib {int /*<<< orphan*/  sib_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_5__ {TYPE_1__ addr; } ;
struct TYPE_6__ {TYPE_2__ route; } ;
struct rdma_id_private {TYPE_3__ id; int /*<<< orphan*/  cma_dev; } ;
struct cma_work {int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct cma_work*,struct rdma_id_private*) ; 
 int FUNC1 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  cma_wq ; 
 int /*<<< orphan*/  FUNC2 (struct cma_work*) ; 
 struct cma_work* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,union ib_gid*) ; 

__attribute__((used)) static int FUNC6(struct rdma_id_private *id_priv)
{
	struct cma_work *work;
	int ret;

	work = FUNC3(sizeof *work, GFP_KERNEL);
	if (!work)
		return -ENOMEM;

	if (!id_priv->cma_dev) {
		ret = FUNC1(id_priv);
		if (ret)
			goto err;
	}

	FUNC5(&id_priv->id.route.addr.dev_addr, (union ib_gid *)
		&(((struct sockaddr_ib *) &id_priv->id.route.addr.dst_addr)->sib_addr));

	FUNC0(work, id_priv);
	FUNC4(cma_wq, &work->work);
	return 0;
err:
	FUNC2(work);
	return ret;
}