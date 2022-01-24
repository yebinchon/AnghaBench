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
struct ib_uverbs_resize_cq_resp {int /*<<< orphan*/  cqe; } ;
struct ib_uverbs_resize_cq {int /*<<< orphan*/  cqe; int /*<<< orphan*/  cq_handle; } ;
struct ib_cq {int /*<<< orphan*/  cqe; TYPE_2__* device; } ;
typedef  int /*<<< orphan*/  resp ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_3__ {int (* resize_cq ) (struct ib_cq*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  UVERBS_OBJECT_CQ ; 
 int FUNC0 (struct ib_cq*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ib_cq* FUNC1 (struct ib_cq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uverbs_attr_bundle*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_cq*) ; 
 int FUNC3 (struct uverbs_attr_bundle*,struct ib_uverbs_resize_cq*,int) ; 
 int FUNC4 (struct uverbs_attr_bundle*,struct ib_uverbs_resize_cq_resp*,int) ; 

__attribute__((used)) static int FUNC5(struct uverbs_attr_bundle *attrs)
{
	struct ib_uverbs_resize_cq	cmd;
	struct ib_uverbs_resize_cq_resp	resp = {};
	struct ib_cq			*cq;
	int				ret = -EINVAL;

	ret = FUNC3(attrs, &cmd, sizeof(cmd));
	if (ret)
		return ret;

	cq = FUNC1(cq, UVERBS_OBJECT_CQ, cmd.cq_handle, attrs);
	if (!cq)
		return -EINVAL;

	ret = cq->device->ops.resize_cq(cq, cmd.cqe, &attrs->driver_udata);
	if (ret)
		goto out;

	resp.cqe = cq->cqe;

	ret = FUNC4(attrs, &resp, sizeof(resp));
out:
	FUNC2(cq);

	return ret;
}