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
typedef  int /*<<< orphan*/  xcmd ;
struct uverbs_attr_bundle {int /*<<< orphan*/  driver_udata; } ;
struct ib_uverbs_create_xsrq {int /*<<< orphan*/  srq_limit; int /*<<< orphan*/  max_sge; int /*<<< orphan*/  max_wr; int /*<<< orphan*/  pd_handle; int /*<<< orphan*/  srq_type; int /*<<< orphan*/  user_handle; int /*<<< orphan*/  response; } ;
struct ib_uverbs_create_srq {int /*<<< orphan*/  srq_limit; int /*<<< orphan*/  max_sge; int /*<<< orphan*/  max_wr; int /*<<< orphan*/  pd_handle; int /*<<< orphan*/  user_handle; int /*<<< orphan*/  response; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SRQT_BASIC ; 
 int FUNC0 (struct uverbs_attr_bundle*,struct ib_uverbs_create_xsrq*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_uverbs_create_xsrq*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct uverbs_attr_bundle*,struct ib_uverbs_create_srq*,int) ; 

__attribute__((used)) static int FUNC3(struct uverbs_attr_bundle *attrs)
{
	struct ib_uverbs_create_srq      cmd;
	struct ib_uverbs_create_xsrq     xcmd;
	int ret;

	ret = FUNC2(attrs, &cmd, sizeof(cmd));
	if (ret)
		return ret;

	FUNC1(&xcmd, 0, sizeof(xcmd));
	xcmd.response	 = cmd.response;
	xcmd.user_handle = cmd.user_handle;
	xcmd.srq_type	 = IB_SRQT_BASIC;
	xcmd.pd_handle	 = cmd.pd_handle;
	xcmd.max_wr	 = cmd.max_wr;
	xcmd.max_sge	 = cmd.max_sge;
	xcmd.srq_limit	 = cmd.srq_limit;

	return FUNC0(attrs, &xcmd, &attrs->driver_udata);
}