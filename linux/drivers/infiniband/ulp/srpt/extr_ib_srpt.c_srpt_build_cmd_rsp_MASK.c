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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_4__ {int scsi_sense_length; } ;
struct TYPE_3__ {struct srp_rsp* buf; } ;
struct srpt_send_ioctx {TYPE_2__ cmd; int /*<<< orphan*/ * sense_data; TYPE_1__ ioctx; } ;
struct srpt_rdma_ch {int max_ti_iu_len; int /*<<< orphan*/  req_lim_delta; } ;
struct srp_rsp {int status; void* sense_data_len; int /*<<< orphan*/  flags; int /*<<< orphan*/  tag; void* req_lim_delta; int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MIN_MAX_RSP_SIZE ; 
 int /*<<< orphan*/  SRP_RSP ; 
 int /*<<< orphan*/  SRP_RSP_FLAG_SNSVALID ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct srp_rsp*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct srp_rsp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 

__attribute__((used)) static int FUNC8(struct srpt_rdma_ch *ch,
			      struct srpt_send_ioctx *ioctx, u64 tag,
			      int status)
{
	struct srp_rsp *srp_rsp;
	const u8 *sense_data;
	int sense_data_len, max_sense_len;

	/*
	 * The lowest bit of all SAM-3 status codes is zero (see also
	 * paragraph 5.3 in SAM-3).
	 */
	FUNC2(status & 1);

	srp_rsp = ioctx->ioctx.buf;
	FUNC0(!srp_rsp);

	sense_data = ioctx->sense_data;
	sense_data_len = ioctx->cmd.scsi_sense_length;
	FUNC2(sense_data_len > sizeof(ioctx->sense_data));

	FUNC6(srp_rsp, 0, sizeof(*srp_rsp));
	srp_rsp->opcode = SRP_RSP;
	srp_rsp->req_lim_delta =
		FUNC4(1 + FUNC3(&ch->req_lim_delta, 0));
	srp_rsp->tag = tag;
	srp_rsp->status = status;

	if (sense_data_len) {
		FUNC1(MIN_MAX_RSP_SIZE <= sizeof(*srp_rsp));
		max_sense_len = ch->max_ti_iu_len - sizeof(*srp_rsp);
		if (sense_data_len > max_sense_len) {
			FUNC7("truncated sense data from %d to %d bytes\n",
				sense_data_len, max_sense_len);
			sense_data_len = max_sense_len;
		}

		srp_rsp->flags |= SRP_RSP_FLAG_SNSVALID;
		srp_rsp->sense_data_len = FUNC4(sense_data_len);
		FUNC5(srp_rsp + 1, sense_data, sense_data_len);
	}

	return sizeof(*srp_rsp) + sense_data_len;
}