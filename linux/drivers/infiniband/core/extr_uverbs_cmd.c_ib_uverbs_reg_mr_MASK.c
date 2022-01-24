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
struct uverbs_attr_bundle {int /*<<< orphan*/  driver_udata; } ;
struct ib_uverbs_reg_mr_resp {int /*<<< orphan*/  mr_handle; int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; } ;
struct ib_uverbs_reg_mr {int start; int hca_va; int access_flags; int /*<<< orphan*/  length; int /*<<< orphan*/  pd_handle; } ;
struct TYPE_8__ {int /*<<< orphan*/  type; } ;
struct ib_uobject {int /*<<< orphan*/  id; int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; struct ib_uobject* object; TYPE_4__ res; struct ib_uobject* uobject; int /*<<< orphan*/ * sig_attrs; int /*<<< orphan*/ * dm; int /*<<< orphan*/  type; struct ib_pd* pd; TYPE_3__* device; } ;
struct ib_pd {int /*<<< orphan*/  usecnt; TYPE_3__* device; } ;
struct ib_mr {int /*<<< orphan*/  id; int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; struct ib_mr* object; TYPE_4__ res; struct ib_mr* uobject; int /*<<< orphan*/ * sig_attrs; int /*<<< orphan*/ * dm; int /*<<< orphan*/  type; struct ib_pd* pd; TYPE_3__* device; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  resp ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_6__ {struct ib_uobject* (* reg_user_mr ) (struct ib_pd*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {int device_cap_flags; } ;
struct TYPE_7__ {TYPE_2__ ops; TYPE_1__ attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 int IB_ACCESS_ON_DEMAND ; 
 int IB_DEVICE_ON_DEMAND_PAGING ; 
 int /*<<< orphan*/  IB_MR_TYPE_USER ; 
 scalar_t__ FUNC0 (struct ib_uobject*) ; 
 int PAGE_MASK ; 
 int FUNC1 (struct ib_uobject*) ; 
 int /*<<< orphan*/  RDMA_RESTRACK_MR ; 
 int /*<<< orphan*/  UVERBS_OBJECT_MR ; 
 int /*<<< orphan*/  UVERBS_OBJECT_PD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_uobject*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_uverbs_reg_mr_resp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 struct ib_uobject* FUNC8 (struct ib_pd*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 struct ib_uobject* FUNC9 (int /*<<< orphan*/ ,struct uverbs_attr_bundle*,struct ib_device**) ; 
 int /*<<< orphan*/  FUNC10 (struct ib_uobject*,struct uverbs_attr_bundle*) ; 
 int FUNC11 (struct ib_uobject*,struct uverbs_attr_bundle*) ; 
 struct ib_pd* FUNC12 (struct ib_pd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uverbs_attr_bundle*) ; 
 int /*<<< orphan*/  FUNC13 (struct ib_pd*) ; 
 int /*<<< orphan*/  FUNC14 (struct uverbs_attr_bundle*) ; 
 int FUNC15 (struct uverbs_attr_bundle*,struct ib_uverbs_reg_mr*,int) ; 
 int FUNC16 (struct uverbs_attr_bundle*,struct ib_uverbs_reg_mr_resp*,int) ; 

__attribute__((used)) static int FUNC17(struct uverbs_attr_bundle *attrs)
{
	struct ib_uverbs_reg_mr      cmd;
	struct ib_uverbs_reg_mr_resp resp;
	struct ib_uobject           *uobj;
	struct ib_pd                *pd;
	struct ib_mr                *mr;
	int                          ret;
	struct ib_device *ib_dev;

	ret = FUNC15(attrs, &cmd, sizeof(cmd));
	if (ret)
		return ret;

	if ((cmd.start & ~PAGE_MASK) != (cmd.hca_va & ~PAGE_MASK))
		return -EINVAL;

	ret = FUNC3(cmd.access_flags);
	if (ret)
		return ret;

	uobj = FUNC9(UVERBS_OBJECT_MR, attrs, &ib_dev);
	if (FUNC0(uobj))
		return FUNC1(uobj);

	pd = FUNC12(pd, UVERBS_OBJECT_PD, cmd.pd_handle, attrs);
	if (!pd) {
		ret = -EINVAL;
		goto err_free;
	}

	if (cmd.access_flags & IB_ACCESS_ON_DEMAND) {
		if (!(pd->device->attrs.device_cap_flags &
		      IB_DEVICE_ON_DEMAND_PAGING)) {
			FUNC6("ODP support not available\n");
			ret = -EINVAL;
			goto err_put;
		}
	}

	mr = pd->device->ops.reg_user_mr(pd, cmd.start, cmd.length, cmd.hca_va,
					 cmd.access_flags,
					 &attrs->driver_udata);
	if (FUNC0(mr)) {
		ret = FUNC1(mr);
		goto err_put;
	}

	mr->device  = pd->device;
	mr->pd      = pd;
	mr->type    = IB_MR_TYPE_USER;
	mr->dm	    = NULL;
	mr->sig_attrs = NULL;
	mr->uobject = uobj;
	FUNC2(&pd->usecnt);
	mr->res.type = RDMA_RESTRACK_MR;
	FUNC7(&mr->res);

	uobj->object = mr;

	FUNC5(&resp, 0, sizeof resp);
	resp.lkey      = mr->lkey;
	resp.rkey      = mr->rkey;
	resp.mr_handle = uobj->id;

	ret = FUNC16(attrs, &resp, sizeof(resp));
	if (ret)
		goto err_copy;

	FUNC13(pd);

	return FUNC11(uobj, attrs);

err_copy:
	FUNC4(mr, FUNC14(attrs));

err_put:
	FUNC13(pd);

err_free:
	FUNC10(uobj, attrs);
	return ret;
}