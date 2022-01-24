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
typedef  int /*<<< orphan*/  u8 ;
struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_5__ {int /*<<< orphan*/  done; } ;
struct iser_tx_desc {TYPE_1__ cqe; int /*<<< orphan*/  type; } ;
struct iser_data_buf {int data_len; scalar_t__ size; int /*<<< orphan*/  sg; } ;
struct TYPE_8__ {int /*<<< orphan*/  sig_count; } ;
struct iser_conn {TYPE_4__ ib_conn; } ;
struct TYPE_7__ {scalar_t__ data_length; } ;
struct iscsi_task {int /*<<< orphan*/  itt; TYPE_3__ unsol_r2t; scalar_t__ imm_count; struct scsi_cmnd* sc; scalar_t__ hdr; struct iscsi_iser_task* dd_data; } ;
struct iscsi_scsi_req {int flags; int /*<<< orphan*/  data_length; } ;
struct iscsi_iser_task {int /*<<< orphan*/  status; struct iser_data_buf* prot; struct iser_data_buf* data; struct iser_tx_desc desc; } ;
struct iscsi_conn {struct iser_conn* dd_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  sector_size; } ;

/* Variables and functions */
 int ISCSI_FLAG_CMD_READ ; 
 int ISCSI_FLAG_CMD_WRITE ; 
 int /*<<< orphan*/  ISCSI_TX_SCSI_COMMAND ; 
 size_t ISER_DIR_IN ; 
 size_t ISER_DIR_OUT ; 
 int /*<<< orphan*/  ISER_TASK_STATUS_STARTED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iser_cmd_comp ; 
 int /*<<< orphan*/  FUNC1 (struct iser_conn*,struct iser_tx_desc*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct iscsi_conn*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_4__*,struct iser_tx_desc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iscsi_task*) ; 
 int FUNC5 (struct iscsi_task*,scalar_t__,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC9 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC11 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_cmnd*) ; 

int FUNC13(struct iscsi_conn *conn,
		      struct iscsi_task *task)
{
	struct iser_conn *iser_conn = conn->dd_data;
	struct iscsi_iser_task *iser_task = task->dd_data;
	unsigned long edtl;
	int err;
	struct iser_data_buf *data_buf, *prot_buf;
	struct iscsi_scsi_req *hdr = (struct iscsi_scsi_req *)task->hdr;
	struct scsi_cmnd *sc  =  task->sc;
	struct iser_tx_desc *tx_desc = &iser_task->desc;
	u8 sig_count = ++iser_conn->ib_conn.sig_count;

	edtl = FUNC7(hdr->data_length);

	/* build the tx desc regd header and add it to the tx desc dto */
	tx_desc->type = ISCSI_TX_SCSI_COMMAND;
	tx_desc->cqe.done = iser_cmd_comp;
	FUNC1(iser_conn, tx_desc);

	if (hdr->flags & ISCSI_FLAG_CMD_READ) {
		data_buf = &iser_task->data[ISER_DIR_IN];
		prot_buf = &iser_task->prot[ISER_DIR_IN];
	} else {
		data_buf = &iser_task->data[ISER_DIR_OUT];
		prot_buf = &iser_task->prot[ISER_DIR_OUT];
	}

	if (FUNC11(sc)) { /* using a scatter list */
		data_buf->sg = FUNC12(sc);
		data_buf->size = FUNC11(sc);
	}
	data_buf->data_len = FUNC8(sc);

	if (FUNC9(sc)) {
		prot_buf->sg  = FUNC10(sc);
		prot_buf->size = FUNC9(sc);
		prot_buf->data_len = (data_buf->data_len >>
				     FUNC0(sc->device->sector_size)) * 8;
	}

	if (hdr->flags & ISCSI_FLAG_CMD_READ) {
		err = FUNC4(task);
		if (err)
			goto send_command_error;
	}
	if (hdr->flags & ISCSI_FLAG_CMD_WRITE) {
		err = FUNC5(task,
					     task->imm_count,
				             task->imm_count +
					     task->unsol_r2t.data_length,
					     edtl);
		if (err)
			goto send_command_error;
	}

	iser_task->status = ISER_TASK_STATUS_STARTED;

	err = FUNC3(&iser_conn->ib_conn, tx_desc,
			     FUNC6(sig_count));
	if (!err)
		return 0;

send_command_error:
	FUNC2("conn %p failed task->itt %d err %d\n",conn, task->itt, err);
	return err;
}