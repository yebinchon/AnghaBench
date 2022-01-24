#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  type; } ;
struct ib_pd {unsigned int flags; struct ib_mr* __internal_mr; int /*<<< orphan*/  unsafe_global_rkey; int /*<<< orphan*/  local_dma_lkey; struct ib_device* device; TYPE_3__ res; int /*<<< orphan*/  usecnt; int /*<<< orphan*/ * uobject; } ;
struct ib_mr {int need_inval; int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; int /*<<< orphan*/ * uobject; int /*<<< orphan*/  type; struct ib_pd* pd; struct ib_device* device; } ;
struct TYPE_6__ {int device_cap_flags; } ;
struct TYPE_5__ {int (* alloc_pd ) (struct ib_pd*,int /*<<< orphan*/ *) ;struct ib_mr* (* get_dma_mr ) (struct ib_pd*,int) ;} ;
struct ib_device {TYPE_2__ attrs; TYPE_1__ ops; int /*<<< orphan*/  local_dma_lkey; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_pd* FUNC0 (struct ib_mr*) ; 
 struct ib_pd* FUNC1 (int) ; 
 int IB_ACCESS_LOCAL_WRITE ; 
 int IB_ACCESS_REMOTE_READ ; 
 int IB_ACCESS_REMOTE_WRITE ; 
 int IB_DEVICE_LOCAL_DMA_LKEY ; 
 int /*<<< orphan*/  IB_MR_TYPE_DMA ; 
 unsigned int IB_PD_UNSAFE_GLOBAL_RKEY ; 
 scalar_t__ FUNC2 (struct ib_mr*) ; 
 int /*<<< orphan*/  RDMA_RESTRACK_PD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_pd*) ; 
 int /*<<< orphan*/  ib_pd ; 
 int /*<<< orphan*/  FUNC5 (struct ib_pd*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char const*) ; 
 struct ib_pd* FUNC9 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ib_pd*,int /*<<< orphan*/ *) ; 
 struct ib_mr* FUNC11 (struct ib_pd*,int) ; 

struct ib_pd *FUNC12(struct ib_device *device, unsigned int flags,
		const char *caller)
{
	struct ib_pd *pd;
	int mr_access_flags = 0;
	int ret;

	pd = FUNC9(device, ib_pd);
	if (!pd)
		return FUNC1(-ENOMEM);

	pd->device = device;
	pd->uobject = NULL;
	pd->__internal_mr = NULL;
	FUNC3(&pd->usecnt, 0);
	pd->flags = flags;

	pd->res.type = RDMA_RESTRACK_PD;
	FUNC8(&pd->res, caller);

	ret = device->ops.alloc_pd(pd, NULL);
	if (ret) {
		FUNC5(pd);
		return FUNC1(ret);
	}
	FUNC7(&pd->res);

	if (device->attrs.device_cap_flags & IB_DEVICE_LOCAL_DMA_LKEY)
		pd->local_dma_lkey = device->local_dma_lkey;
	else
		mr_access_flags |= IB_ACCESS_LOCAL_WRITE;

	if (flags & IB_PD_UNSAFE_GLOBAL_RKEY) {
		FUNC6("%s: enabling unsafe global rkey\n", caller);
		mr_access_flags |= IB_ACCESS_REMOTE_READ | IB_ACCESS_REMOTE_WRITE;
	}

	if (mr_access_flags) {
		struct ib_mr *mr;

		mr = pd->device->ops.get_dma_mr(pd, mr_access_flags);
		if (FUNC2(mr)) {
			FUNC4(pd);
			return FUNC0(mr);
		}

		mr->device	= pd->device;
		mr->pd		= pd;
		mr->type        = IB_MR_TYPE_DMA;
		mr->uobject	= NULL;
		mr->need_inval	= false;

		pd->__internal_mr = mr;

		if (!(device->attrs.device_cap_flags & IB_DEVICE_LOCAL_DMA_LKEY))
			pd->local_dma_lkey = pd->__internal_mr->lkey;

		if (flags & IB_PD_UNSAFE_GLOBAL_RKEY)
			pd->unsafe_global_rkey = pd->__internal_mr->rkey;
	}

	return pd;
}