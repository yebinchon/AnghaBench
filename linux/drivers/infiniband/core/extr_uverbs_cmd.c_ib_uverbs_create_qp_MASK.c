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
struct uverbs_attr_bundle {int dummy; } ;
struct ib_uverbs_ex_create_qp {int /*<<< orphan*/  is_srq; int /*<<< orphan*/  qp_type; int /*<<< orphan*/  sq_sig_all; int /*<<< orphan*/  max_inline_data; int /*<<< orphan*/  max_recv_sge; int /*<<< orphan*/  max_send_sge; int /*<<< orphan*/  max_recv_wr; int /*<<< orphan*/  max_send_wr; int /*<<< orphan*/  srq_handle; int /*<<< orphan*/  recv_cq_handle; int /*<<< orphan*/  send_cq_handle; int /*<<< orphan*/  pd_handle; int /*<<< orphan*/  user_handle; } ;
struct ib_uverbs_create_qp {int /*<<< orphan*/  is_srq; int /*<<< orphan*/  qp_type; int /*<<< orphan*/  sq_sig_all; int /*<<< orphan*/  max_inline_data; int /*<<< orphan*/  max_recv_sge; int /*<<< orphan*/  max_send_sge; int /*<<< orphan*/  max_recv_wr; int /*<<< orphan*/  max_send_wr; int /*<<< orphan*/  srq_handle; int /*<<< orphan*/  recv_cq_handle; int /*<<< orphan*/  send_cq_handle; int /*<<< orphan*/  pd_handle; int /*<<< orphan*/  user_handle; } ;
typedef  int /*<<< orphan*/  cmd_ex ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int FUNC0 (struct uverbs_attr_bundle*,struct ib_uverbs_ex_create_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_uverbs_ex_create_qp*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct uverbs_attr_bundle*,struct ib_uverbs_create_qp*,int) ; 

__attribute__((used)) static int FUNC3(struct uverbs_attr_bundle *attrs)
{
	struct ib_uverbs_create_qp      cmd;
	struct ib_uverbs_ex_create_qp	cmd_ex;
	int ret;

	ret = FUNC2(attrs, &cmd, sizeof(cmd));
	if (ret)
		return ret;

	FUNC1(&cmd_ex, 0, sizeof(cmd_ex));
	cmd_ex.user_handle = cmd.user_handle;
	cmd_ex.pd_handle = cmd.pd_handle;
	cmd_ex.send_cq_handle = cmd.send_cq_handle;
	cmd_ex.recv_cq_handle = cmd.recv_cq_handle;
	cmd_ex.srq_handle = cmd.srq_handle;
	cmd_ex.max_send_wr = cmd.max_send_wr;
	cmd_ex.max_recv_wr = cmd.max_recv_wr;
	cmd_ex.max_send_sge = cmd.max_send_sge;
	cmd_ex.max_recv_sge = cmd.max_recv_sge;
	cmd_ex.max_inline_data = cmd.max_inline_data;
	cmd_ex.sq_sig_all = cmd.sq_sig_all;
	cmd_ex.qp_type = cmd.qp_type;
	cmd_ex.is_srq = cmd.is_srq;

	return FUNC0(attrs, &cmd_ex);
}