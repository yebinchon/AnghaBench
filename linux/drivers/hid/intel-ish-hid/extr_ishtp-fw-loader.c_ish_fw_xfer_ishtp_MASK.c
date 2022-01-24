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
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int /*<<< orphan*/  command; } ;
struct TYPE_4__ {int is_last; scalar_t__ size; scalar_t__ offset; int /*<<< orphan*/  xfer_mode; TYPE_1__ hdr; } ;
struct loader_xfer_ipc_fragment {TYPE_2__ fragment; int /*<<< orphan*/  data; } ;
struct loader_msg_hdr {int dummy; } ;
struct ishtp_cl_data {int flag_retry; } ;
struct firmware {scalar_t__ size; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  ldr_xfer_ipc_ack ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IPC_FRAGMENT_DATA_PREAMBLE ; 
 int /*<<< orphan*/  LOADER_CMD_XFER_FRAGMENT ; 
 scalar_t__ LOADER_SHIM_IPC_BUF_SIZE ; 
 int /*<<< orphan*/  LOADER_XFER_MODE_ISHTP ; 
 int /*<<< orphan*/  FUNC0 (struct ishtp_cl_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct loader_xfer_ipc_fragment*) ; 
 struct loader_xfer_ipc_fragment* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ishtp_cl_data*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct ishtp_cl_data *client_data,
			     const struct firmware *fw)
{
	int rv;
	u32 fragment_offset, fragment_size, payload_max_size;
	struct loader_xfer_ipc_fragment *ldr_xfer_ipc_frag;
	struct loader_msg_hdr ldr_xfer_ipc_ack;

	payload_max_size =
		LOADER_SHIM_IPC_BUF_SIZE - IPC_FRAGMENT_DATA_PREAMBLE;

	ldr_xfer_ipc_frag = FUNC3(LOADER_SHIM_IPC_BUF_SIZE, GFP_KERNEL);
	if (!ldr_xfer_ipc_frag) {
		client_data->flag_retry = true;
		return -ENOMEM;
	}

	ldr_xfer_ipc_frag->fragment.hdr.command = LOADER_CMD_XFER_FRAGMENT;
	ldr_xfer_ipc_frag->fragment.xfer_mode = LOADER_XFER_MODE_ISHTP;

	/* Break the firmware image into fragments and send as ISH-TP payload */
	fragment_offset = 0;
	while (fragment_offset < fw->size) {
		if (fragment_offset + payload_max_size < fw->size) {
			fragment_size = payload_max_size;
			ldr_xfer_ipc_frag->fragment.is_last = 0;
		} else {
			fragment_size = fw->size - fragment_offset;
			ldr_xfer_ipc_frag->fragment.is_last = 1;
		}

		ldr_xfer_ipc_frag->fragment.offset = fragment_offset;
		ldr_xfer_ipc_frag->fragment.size = fragment_size;
		FUNC5(ldr_xfer_ipc_frag->data,
		       &fw->data[fragment_offset],
		       fragment_size);

		FUNC1(FUNC0(client_data),
			"xfer_mode=ipc offset=0x%08x size=0x%08x is_last=%d\n",
			ldr_xfer_ipc_frag->fragment.offset,
			ldr_xfer_ipc_frag->fragment.size,
			ldr_xfer_ipc_frag->fragment.is_last);

		rv = FUNC4(client_data,
				    (u8 *)ldr_xfer_ipc_frag,
				    IPC_FRAGMENT_DATA_PREAMBLE + fragment_size,
				    (u8 *)&ldr_xfer_ipc_ack,
				    sizeof(ldr_xfer_ipc_ack));
		if (rv < 0) {
			client_data->flag_retry = true;
			goto end_err_resp_buf_release;
		}

		fragment_offset += fragment_size;
	}

	FUNC2(ldr_xfer_ipc_frag);
	return 0;

end_err_resp_buf_release:
	/* Free ISH buffer if not done already, in error case */
	FUNC2(ldr_xfer_ipc_frag);
	return rv;
}