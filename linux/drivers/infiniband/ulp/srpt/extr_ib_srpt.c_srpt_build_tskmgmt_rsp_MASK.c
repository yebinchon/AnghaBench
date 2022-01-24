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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {struct srp_rsp* buf; } ;
struct srpt_send_ioctx {TYPE_1__ ioctx; } ;
struct srpt_rdma_ch {int /*<<< orphan*/  req_lim_delta; } ;
struct srp_rsp {int /*<<< orphan*/ * data; void* resp_data_len; int /*<<< orphan*/  flags; int /*<<< orphan*/  tag; void* req_lim_delta; int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SRP_RSP ; 
 int /*<<< orphan*/  SRP_RSP_FLAG_RSPVALID ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct srp_rsp*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct srpt_rdma_ch *ch,
				  struct srpt_send_ioctx *ioctx,
				  u8 rsp_code, u64 tag)
{
	struct srp_rsp *srp_rsp;
	int resp_data_len;
	int resp_len;

	resp_data_len = 4;
	resp_len = sizeof(*srp_rsp) + resp_data_len;

	srp_rsp = ioctx->ioctx.buf;
	FUNC0(!srp_rsp);
	FUNC3(srp_rsp, 0, sizeof(*srp_rsp));

	srp_rsp->opcode = SRP_RSP;
	srp_rsp->req_lim_delta =
		FUNC2(1 + FUNC1(&ch->req_lim_delta, 0));
	srp_rsp->tag = tag;

	srp_rsp->flags |= SRP_RSP_FLAG_RSPVALID;
	srp_rsp->resp_data_len = FUNC2(resp_data_len);
	srp_rsp->data[3] = rsp_code;

	return resp_len;
}