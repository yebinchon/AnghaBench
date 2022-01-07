
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u32 ;
struct isert_device {TYPE_2__* pd; struct ib_device* ib_device; } ;
struct isert_conn {struct isert_device* device; } ;
struct ib_send_wr {int dummy; } ;
struct TYPE_7__ {int num_sge; struct ib_sge* tx_sg; int iscsi_header; struct ib_send_wr send_wr; } ;
struct isert_cmd {TYPE_3__ tx_desc; int pdu_buf_dma; void* pdu_buf_len; } ;
struct iscsi_scsi_rsp {int dlength; } ;
struct iscsi_conn {struct isert_conn* context; } ;
struct TYPE_5__ {int se_cmd_flags; int scsi_sense_length; scalar_t__ sense_buffer; } ;
struct iscsi_cmd {scalar_t__ sense_buffer; TYPE_1__ se_cmd; } ;
struct ib_sge {int lkey; void* length; int addr; } ;
struct ib_device {int dummy; } ;
typedef int __be16 ;
struct TYPE_6__ {int local_dma_lkey; } ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int SCF_EMULATED_TASK_SENSE ;
 int SCF_TRANSPORT_TASK_SENSE ;
 int hton24 (int ,void*) ;
 int ib_dma_map_single (struct ib_device*,void*,void*,int ) ;
 scalar_t__ ib_dma_mapping_error (struct ib_device*,int ) ;
 int iscsit_build_rsp_pdu (struct iscsi_cmd*,struct iscsi_conn*,int,struct iscsi_scsi_rsp*) ;
 struct isert_cmd* iscsit_priv_cmd (struct iscsi_cmd*) ;
 int isert_create_send_desc (struct isert_conn*,struct isert_cmd*,TYPE_3__*) ;
 int isert_dbg (char*) ;
 int isert_init_send_wr (struct isert_conn*,struct isert_cmd*,struct ib_send_wr*) ;
 int isert_init_tx_hdrs (struct isert_conn*,TYPE_3__*) ;
 int isert_post_response (struct isert_conn*,struct isert_cmd*) ;
 int put_unaligned_be16 (int,scalar_t__) ;

__attribute__((used)) static int
isert_put_response(struct iscsi_conn *conn, struct iscsi_cmd *cmd)
{
 struct isert_cmd *isert_cmd = iscsit_priv_cmd(cmd);
 struct isert_conn *isert_conn = conn->context;
 struct ib_send_wr *send_wr = &isert_cmd->tx_desc.send_wr;
 struct iscsi_scsi_rsp *hdr = (struct iscsi_scsi_rsp *)
    &isert_cmd->tx_desc.iscsi_header;

 isert_create_send_desc(isert_conn, isert_cmd, &isert_cmd->tx_desc);
 iscsit_build_rsp_pdu(cmd, conn, 1, hdr);
 isert_init_tx_hdrs(isert_conn, &isert_cmd->tx_desc);



 if (cmd->se_cmd.sense_buffer &&
     ((cmd->se_cmd.se_cmd_flags & SCF_TRANSPORT_TASK_SENSE) ||
     (cmd->se_cmd.se_cmd_flags & SCF_EMULATED_TASK_SENSE))) {
  struct isert_device *device = isert_conn->device;
  struct ib_device *ib_dev = device->ib_device;
  struct ib_sge *tx_dsg = &isert_cmd->tx_desc.tx_sg[1];
  u32 padding, pdu_len;

  put_unaligned_be16(cmd->se_cmd.scsi_sense_length,
       cmd->sense_buffer);
  cmd->se_cmd.scsi_sense_length += sizeof(__be16);

  padding = -(cmd->se_cmd.scsi_sense_length) & 3;
  hton24(hdr->dlength, (u32)cmd->se_cmd.scsi_sense_length);
  pdu_len = cmd->se_cmd.scsi_sense_length + padding;

  isert_cmd->pdu_buf_dma = ib_dma_map_single(ib_dev,
    (void *)cmd->sense_buffer, pdu_len,
    DMA_TO_DEVICE);
  if (ib_dma_mapping_error(ib_dev, isert_cmd->pdu_buf_dma))
   return -ENOMEM;

  isert_cmd->pdu_buf_len = pdu_len;
  tx_dsg->addr = isert_cmd->pdu_buf_dma;
  tx_dsg->length = pdu_len;
  tx_dsg->lkey = device->pd->local_dma_lkey;
  isert_cmd->tx_desc.num_sge = 2;
 }

 isert_init_send_wr(isert_conn, isert_cmd, send_wr);

 isert_dbg("Posting SCSI Response\n");

 return isert_post_response(isert_conn, isert_cmd);
}
