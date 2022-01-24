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
struct ib_uverbs_ex_modify_qp_resp {int /*<<< orphan*/  response_length; } ;
struct TYPE_2__ {int attr_mask; } ;
struct ib_uverbs_ex_modify_qp {TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  resp ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EOPNOTSUPP ; 
 int IB_USER_LAST_QP_ATTR_MASK ; 
 int FUNC1 (struct uverbs_attr_bundle*,struct ib_uverbs_ex_modify_qp*) ; 
 int FUNC2 (struct uverbs_attr_bundle*,struct ib_uverbs_ex_modify_qp*,int) ; 
 int FUNC3 (struct uverbs_attr_bundle*,struct ib_uverbs_ex_modify_qp_resp*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct uverbs_attr_bundle*,int) ; 

__attribute__((used)) static int FUNC5(struct uverbs_attr_bundle *attrs)
{
	struct ib_uverbs_ex_modify_qp cmd;
	struct ib_uverbs_ex_modify_qp_resp resp = {
		.response_length = FUNC4(attrs, sizeof(resp))
	};
	int ret;

	ret = FUNC2(attrs, &cmd, sizeof(cmd));
	if (ret)
		return ret;

	/*
	 * Last bit is reserved for extending the attr_mask by
	 * using another field.
	 */
	FUNC0(IB_USER_LAST_QP_ATTR_MASK == (1 << 31));

	if (cmd.base.attr_mask &
	    ~((IB_USER_LAST_QP_ATTR_MASK << 1) - 1))
		return -EOPNOTSUPP;

	ret = FUNC1(attrs, &cmd);
	if (ret)
		return ret;

	return FUNC3(attrs, &resp, sizeof(resp));
}