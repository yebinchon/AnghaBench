
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint64_t ;
typedef void* uint32_t ;
typedef int u8 ;
struct isert_conn {struct iscsi_conn* conn; } ;
struct isert_cmd {void* inv_rkey; void* write_va; void* write_stag; void* read_va; void* read_stag; } ;
struct iscsi_hdr {int opcode; int itt; int ttt; } ;
struct iser_rx_desc {struct iscsi_hdr iscsi_header; } ;
struct iscsi_text {int dummy; } ;
struct iscsi_conn {TYPE_2__* sess; } ;
struct iscsi_cmd {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sess_ops; } ;
struct TYPE_3__ {scalar_t__ SessionType; } ;


 int EINVAL ;
 int ISCSI_OPCODE_MASK ;






 int be32_to_cpu (int ) ;
 int dump_stack () ;
 struct iscsi_cmd* iscsit_find_cmd_from_itt (struct iscsi_conn*,int ) ;
 int iscsit_handle_logout_cmd (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*) ;
 int iscsit_handle_task_mgt_cmd (struct iscsi_conn*,struct iscsi_cmd*,unsigned char*) ;
 struct isert_cmd* iscsit_priv_cmd (struct iscsi_cmd*) ;
 struct iscsi_cmd* isert_allocate_cmd (struct iscsi_conn*,struct iser_rx_desc*) ;
 int isert_err (char*,int) ;
 int isert_handle_iscsi_dataout (struct isert_conn*,struct iser_rx_desc*,unsigned char*) ;
 int isert_handle_nop_out (struct isert_conn*,struct isert_cmd*,struct iscsi_cmd*,struct iser_rx_desc*,unsigned char*) ;
 int isert_handle_scsi_cmd (struct isert_conn*,struct isert_cmd*,struct iscsi_cmd*,struct iser_rx_desc*,unsigned char*) ;
 int isert_handle_text_cmd (struct isert_conn*,struct isert_cmd*,struct iscsi_cmd*,struct iser_rx_desc*,struct iscsi_text*) ;

__attribute__((used)) static int
isert_rx_opcode(struct isert_conn *isert_conn, struct iser_rx_desc *rx_desc,
  uint32_t read_stag, uint64_t read_va,
  uint32_t write_stag, uint64_t write_va)
{
 struct iscsi_hdr *hdr = &rx_desc->iscsi_header;
 struct iscsi_conn *conn = isert_conn->conn;
 struct iscsi_cmd *cmd;
 struct isert_cmd *isert_cmd;
 int ret = -EINVAL;
 u8 opcode = (hdr->opcode & ISCSI_OPCODE_MASK);

 if (conn->sess->sess_ops->SessionType &&
    (!(opcode & 128) || !(opcode & 133))) {
  isert_err("Got illegal opcode: 0x%02x in SessionType=Discovery,"
     " ignoring\n", opcode);
  return 0;
 }

 switch (opcode) {
 case 131:
  cmd = isert_allocate_cmd(conn, rx_desc);
  if (!cmd)
   break;

  isert_cmd = iscsit_priv_cmd(cmd);
  isert_cmd->read_stag = read_stag;
  isert_cmd->read_va = read_va;
  isert_cmd->write_stag = write_stag;
  isert_cmd->write_va = write_va;
  isert_cmd->inv_rkey = read_stag ? read_stag : write_stag;

  ret = isert_handle_scsi_cmd(isert_conn, isert_cmd, cmd,
     rx_desc, (unsigned char *)hdr);
  break;
 case 132:
  cmd = isert_allocate_cmd(conn, rx_desc);
  if (!cmd)
   break;

  isert_cmd = iscsit_priv_cmd(cmd);
  ret = isert_handle_nop_out(isert_conn, isert_cmd, cmd,
        rx_desc, (unsigned char *)hdr);
  break;
 case 130:
  ret = isert_handle_iscsi_dataout(isert_conn, rx_desc,
      (unsigned char *)hdr);
  break;
 case 129:
  cmd = isert_allocate_cmd(conn, rx_desc);
  if (!cmd)
   break;

  ret = iscsit_handle_task_mgt_cmd(conn, cmd,
      (unsigned char *)hdr);
  break;
 case 133:
  cmd = isert_allocate_cmd(conn, rx_desc);
  if (!cmd)
   break;

  ret = iscsit_handle_logout_cmd(conn, cmd, (unsigned char *)hdr);
  break;
 case 128:
  if (be32_to_cpu(hdr->ttt) != 0xFFFFFFFF)
   cmd = iscsit_find_cmd_from_itt(conn, hdr->itt);
  else
   cmd = isert_allocate_cmd(conn, rx_desc);

  if (!cmd)
   break;

  isert_cmd = iscsit_priv_cmd(cmd);
  ret = isert_handle_text_cmd(isert_conn, isert_cmd, cmd,
         rx_desc, (struct iscsi_text *)hdr);
  break;
 default:
  isert_err("Got unknown iSCSI OpCode: 0x%02x\n", opcode);
  dump_stack();
  break;
 }

 return ret;
}
