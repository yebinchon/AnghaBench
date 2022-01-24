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
struct uverbs_attr_bundle {int /*<<< orphan*/  driver_udata; } ;
struct rdma_ah_attr {int /*<<< orphan*/  type; } ;
struct ib_uverbs_create_ah_resp {int /*<<< orphan*/  ah_handle; } ;
struct TYPE_3__ {int /*<<< orphan*/  dgid; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  sgid_index; int /*<<< orphan*/  flow_label; } ;
struct TYPE_4__ {TYPE_1__ grh; scalar_t__ is_global; int /*<<< orphan*/  port_num; int /*<<< orphan*/  static_rate; int /*<<< orphan*/  src_path_bits; int /*<<< orphan*/  sl; int /*<<< orphan*/  dlid; } ;
struct ib_uverbs_create_ah {int /*<<< orphan*/  user_handle; TYPE_2__ attr; int /*<<< orphan*/  pd_handle; } ;
struct ib_uobject {int /*<<< orphan*/  id; struct ib_uobject* object; int /*<<< orphan*/  user_handle; struct ib_uobject* uobject; } ;
struct ib_pd {int dummy; } ;
struct ib_device {int dummy; } ;
struct ib_ah {int /*<<< orphan*/  id; struct ib_ah* object; int /*<<< orphan*/  user_handle; struct ib_ah* uobject; } ;
typedef  int /*<<< orphan*/  resp ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct ib_uobject*) ; 
 int FUNC1 (struct ib_uobject*) ; 
 int /*<<< orphan*/  RDMA_DESTROY_AH_SLEEPABLE ; 
 int /*<<< orphan*/  UVERBS_OBJECT_AH ; 
 int /*<<< orphan*/  UVERBS_OBJECT_PD ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_ah_attr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_ah_attr*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 struct ib_uobject* FUNC12 (struct ib_pd*,struct rdma_ah_attr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct ib_uobject*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ib_device*,int /*<<< orphan*/ ) ; 
 struct ib_uobject* FUNC15 (int /*<<< orphan*/ ,struct uverbs_attr_bundle*,struct ib_device**) ; 
 int /*<<< orphan*/  FUNC16 (struct ib_uobject*,struct uverbs_attr_bundle*) ; 
 int FUNC17 (struct ib_uobject*,struct uverbs_attr_bundle*) ; 
 struct ib_pd* FUNC18 (struct ib_pd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uverbs_attr_bundle*) ; 
 int /*<<< orphan*/  FUNC19 (struct ib_pd*) ; 
 int /*<<< orphan*/  FUNC20 (struct uverbs_attr_bundle*) ; 
 int FUNC21 (struct uverbs_attr_bundle*,struct ib_uverbs_create_ah*,int) ; 
 int FUNC22 (struct uverbs_attr_bundle*,struct ib_uverbs_create_ah_resp*,int) ; 

__attribute__((used)) static int FUNC23(struct uverbs_attr_bundle *attrs)
{
	struct ib_uverbs_create_ah	 cmd;
	struct ib_uverbs_create_ah_resp	 resp;
	struct ib_uobject		*uobj;
	struct ib_pd			*pd;
	struct ib_ah			*ah;
	struct rdma_ah_attr		attr = {};
	int ret;
	struct ib_device *ib_dev;

	ret = FUNC21(attrs, &cmd, sizeof(cmd));
	if (ret)
		return ret;

	uobj = FUNC15(UVERBS_OBJECT_AH, attrs, &ib_dev);
	if (FUNC0(uobj))
		return FUNC1(uobj);

	if (!FUNC14(ib_dev, cmd.attr.port_num)) {
		ret = -EINVAL;
		goto err;
	}

	pd = FUNC18(pd, UVERBS_OBJECT_PD, cmd.pd_handle, attrs);
	if (!pd) {
		ret = -EINVAL;
		goto err;
	}

	attr.type = FUNC2(ib_dev, cmd.attr.port_num);
	FUNC7(&attr, false);
	FUNC5(&attr, cmd.attr.dlid);
	FUNC10(&attr, cmd.attr.sl);
	FUNC8(&attr, cmd.attr.src_path_bits);
	FUNC11(&attr, cmd.attr.static_rate);
	FUNC9(&attr, cmd.attr.port_num);

	if (cmd.attr.is_global) {
		FUNC6(&attr, NULL, cmd.attr.grh.flow_label,
				cmd.attr.grh.sgid_index,
				cmd.attr.grh.hop_limit,
				cmd.attr.grh.traffic_class);
		FUNC4(&attr, cmd.attr.grh.dgid);
	} else {
		FUNC3(&attr, 0);
	}

	ah = FUNC12(pd, &attr, &attrs->driver_udata);
	if (FUNC0(ah)) {
		ret = FUNC1(ah);
		goto err_put;
	}

	ah->uobject  = uobj;
	uobj->user_handle = cmd.user_handle;
	uobj->object = ah;

	resp.ah_handle = uobj->id;

	ret = FUNC22(attrs, &resp, sizeof(resp));
	if (ret)
		goto err_copy;

	FUNC19(pd);
	return FUNC17(uobj, attrs);

err_copy:
	FUNC13(ah, RDMA_DESTROY_AH_SLEEPABLE,
			     FUNC20(attrs));

err_put:
	FUNC19(pd);

err:
	FUNC16(uobj, attrs);
	return ret;
}