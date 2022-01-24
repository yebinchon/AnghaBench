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
struct uverbs_attr_bundle {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cq_period; int /*<<< orphan*/  cq_count; } ;
struct ib_uverbs_ex_modify_cq {scalar_t__ attr_mask; TYPE_1__ attr; int /*<<< orphan*/  cq_handle; scalar_t__ reserved; } ;
struct ib_cq {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ IB_CQ_MODERATE ; 
 int /*<<< orphan*/  UVERBS_OBJECT_CQ ; 
 int FUNC0 (struct ib_cq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ib_cq* FUNC1 (struct ib_cq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uverbs_attr_bundle*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_cq*) ; 
 int FUNC3 (struct uverbs_attr_bundle*,struct ib_uverbs_ex_modify_cq*,int) ; 

__attribute__((used)) static int FUNC4(struct uverbs_attr_bundle *attrs)
{
	struct ib_uverbs_ex_modify_cq cmd;
	struct ib_cq *cq;
	int ret;

	ret = FUNC3(attrs, &cmd, sizeof(cmd));
	if (ret)
		return ret;

	if (!cmd.attr_mask || cmd.reserved)
		return -EINVAL;

	if (cmd.attr_mask > IB_CQ_MODERATE)
		return -EOPNOTSUPP;

	cq = FUNC1(cq, UVERBS_OBJECT_CQ, cmd.cq_handle, attrs);
	if (!cq)
		return -EINVAL;

	ret = FUNC0(cq, cmd.attr.cq_count, cmd.attr.cq_period);

	FUNC2(cq);

	return ret;
}