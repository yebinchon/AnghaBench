
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct i40iw_terminate_hdr {int hdrct; } ;
struct i40iw_sc_qp {int* q2_buf; void* eventtype; } ;
struct i40iw_aeqe_info {int ae_id; scalar_t__ q2_data_written; } ;
typedef int __be16 ;


 int DDP_CATASTROPHIC ;
 int DDP_CATASTROPHIC_LOCAL ;
 int DDP_HDR_FLAG ;
 int DDP_LEN_FLAG ;
 int DDP_LLP ;
 int DDP_TAGGED_BOUNDS ;
 int DDP_TAGGED_BUFFER ;
 int DDP_TAGGED_INV_DDP_VER ;
 int DDP_TAGGED_INV_STAG ;
 int DDP_TAGGED_UNASSOC_STAG ;
 int DDP_UNTAGGED_BUFFER ;
 int DDP_UNTAGGED_INV_DDP_VER ;
 int DDP_UNTAGGED_INV_MO ;
 int DDP_UNTAGGED_INV_MSN_NO_BUF ;
 int DDP_UNTAGGED_INV_MSN_RANGE ;
 int DDP_UNTAGGED_INV_QN ;
 int DDP_UNTAGGED_INV_TOO_LONG ;
 int FLUSH_FATAL_ERR ;
 int FLUSH_GENERAL_ERR ;
 int FLUSH_LOC_LEN_ERR ;
 int FLUSH_LOC_QP_OP_ERR ;
 int FLUSH_PROT_ERR ;
 int FLUSH_REM_ACCESS_ERR ;
 int FLUSH_REM_OP_ERR ;
 int LAYER_DDP ;
 int LAYER_MPA ;
 int LAYER_RDMA ;
 int MPA_CRC ;
 int Q2_BAD_FRAME_OFFSET ;
 int RDMAP_ACCESS ;
 int RDMAP_CANT_INV_STAG ;
 int RDMAP_INV_BOUNDS ;
 int RDMAP_INV_RDMAP_VER ;
 int RDMAP_INV_STAG ;
 int RDMAP_REMOTE_OP ;
 int RDMAP_REMOTE_PROT ;
 int RDMAP_TO_WRAP ;
 int RDMAP_UNASSOC_STAG ;
 int RDMAP_UNEXPECTED_OP ;
 int RDMAP_UNSPECIFIED ;
 int RDMA_HDR_FLAG ;
 int RDMA_OPCODE_MASK ;
 int RDMA_READ_REQ_OPCODE ;
 scalar_t__ TERM_DDP_LEN_TAGGED ;
 scalar_t__ TERM_DDP_LEN_UNTAGGED ;
 void* TERM_EVENT_QP_ACCESS_ERR ;
 scalar_t__ TERM_RDMA_LEN ;
 int i40iw_iwarp_opcode (struct i40iw_aeqe_info*,int*) ;
 int* i40iw_locate_mpa (int*) ;
 int i40iw_setup_termhdr (struct i40iw_sc_qp*,struct i40iw_terminate_hdr*,int ,int,int ) ;
 int memcpy (struct i40iw_terminate_hdr*,int*,int) ;
 int memset (struct i40iw_terminate_hdr*,int ,int) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static int i40iw_bld_terminate_hdr(struct i40iw_sc_qp *qp,
       struct i40iw_aeqe_info *info)
{
 u8 *pkt = qp->q2_buf + Q2_BAD_FRAME_OFFSET;
 u16 ddp_seg_len;
 int copy_len = 0;
 u8 is_tagged = 0;
 u32 opcode;
 struct i40iw_terminate_hdr *termhdr;

 termhdr = (struct i40iw_terminate_hdr *)qp->q2_buf;
 memset(termhdr, 0, Q2_BAD_FRAME_OFFSET);

 if (info->q2_data_written) {

  pkt = i40iw_locate_mpa(pkt);
  ddp_seg_len = ntohs(*(__be16 *)pkt);
  if (ddp_seg_len) {
   copy_len = 2;
   termhdr->hdrct = DDP_LEN_FLAG;
   if (pkt[2] & 0x80) {
    is_tagged = 1;
    if (ddp_seg_len >= TERM_DDP_LEN_TAGGED) {
     copy_len += TERM_DDP_LEN_TAGGED;
     termhdr->hdrct |= DDP_HDR_FLAG;
    }
   } else {
    if (ddp_seg_len >= TERM_DDP_LEN_UNTAGGED) {
     copy_len += TERM_DDP_LEN_UNTAGGED;
     termhdr->hdrct |= DDP_HDR_FLAG;
    }

    if (ddp_seg_len >= (TERM_DDP_LEN_UNTAGGED + TERM_RDMA_LEN)) {
     if ((pkt[3] & RDMA_OPCODE_MASK) == RDMA_READ_REQ_OPCODE) {
      copy_len += TERM_RDMA_LEN;
      termhdr->hdrct |= RDMA_HDR_FLAG;
     }
    }
   }
  }
 }

 opcode = i40iw_iwarp_opcode(info, pkt);

 switch (info->ae_id) {
 case 145:
  qp->eventtype = TERM_EVENT_QP_ACCESS_ERR;
  if (opcode == 130)
   i40iw_setup_termhdr(qp, termhdr, FLUSH_PROT_ERR,
         (LAYER_DDP << 4) | DDP_TAGGED_BUFFER, DDP_TAGGED_INV_STAG);
  else
   i40iw_setup_termhdr(qp, termhdr, FLUSH_REM_ACCESS_ERR,
         (LAYER_RDMA << 4) | RDMAP_REMOTE_PROT, RDMAP_INV_STAG);
  break;
 case 150:
  qp->eventtype = TERM_EVENT_QP_ACCESS_ERR;
  if (info->q2_data_written)
   i40iw_setup_termhdr(qp, termhdr, FLUSH_PROT_ERR,
         (LAYER_DDP << 4) | DDP_TAGGED_BUFFER, DDP_TAGGED_BOUNDS);
  else
   i40iw_setup_termhdr(qp, termhdr, FLUSH_REM_ACCESS_ERR,
         (LAYER_RDMA << 4) | RDMAP_REMOTE_PROT, RDMAP_INV_BOUNDS);
  break;
 case 154:
  switch (opcode) {
  case 130:
   i40iw_setup_termhdr(qp, termhdr, FLUSH_PROT_ERR,
         (LAYER_DDP << 4) | DDP_TAGGED_BUFFER, DDP_TAGGED_UNASSOC_STAG);
   break;
  case 129:
  case 128:
   i40iw_setup_termhdr(qp, termhdr, FLUSH_REM_ACCESS_ERR,
         (LAYER_RDMA << 4) | RDMAP_REMOTE_PROT, RDMAP_CANT_INV_STAG);
   break;
  default:
   i40iw_setup_termhdr(qp, termhdr, FLUSH_REM_ACCESS_ERR,
         (LAYER_RDMA << 4) | RDMAP_REMOTE_PROT, RDMAP_UNASSOC_STAG);
  }
  break;
 case 148:
  qp->eventtype = TERM_EVENT_QP_ACCESS_ERR;
  i40iw_setup_termhdr(qp, termhdr, FLUSH_REM_ACCESS_ERR,
        (LAYER_RDMA << 4) | RDMAP_REMOTE_PROT, RDMAP_INV_STAG);
  break;
 case 153:
  i40iw_setup_termhdr(qp, termhdr, FLUSH_LOC_QP_OP_ERR,
        (LAYER_DDP << 4) | DDP_UNTAGGED_BUFFER, DDP_UNTAGGED_INV_QN);
  break;
 case 151:
 case 152:
  qp->eventtype = TERM_EVENT_QP_ACCESS_ERR;
  switch (opcode) {
  case 129:
  case 128:
   i40iw_setup_termhdr(qp, termhdr, FLUSH_REM_OP_ERR,
         (LAYER_RDMA << 4) | RDMAP_REMOTE_OP, RDMAP_CANT_INV_STAG);
   break;
  default:
   i40iw_setup_termhdr(qp, termhdr, FLUSH_REM_ACCESS_ERR,
         (LAYER_RDMA << 4) | RDMAP_REMOTE_OP, RDMAP_INV_STAG);
  }
  break;
 case 147:
 case 149:
 case 133:
  qp->eventtype = TERM_EVENT_QP_ACCESS_ERR;
  i40iw_setup_termhdr(qp, termhdr, FLUSH_REM_ACCESS_ERR,
        (LAYER_RDMA << 4) | RDMAP_REMOTE_PROT, RDMAP_ACCESS);
  break;
 case 146:
  qp->eventtype = TERM_EVENT_QP_ACCESS_ERR;
  i40iw_setup_termhdr(qp, termhdr, FLUSH_REM_ACCESS_ERR,
        (LAYER_RDMA << 4) | RDMAP_REMOTE_PROT, RDMAP_TO_WRAP);
  break;
 case 136:
  i40iw_setup_termhdr(qp, termhdr, FLUSH_GENERAL_ERR,
        (LAYER_MPA << 4) | DDP_LLP, MPA_CRC);
  break;
 case 135:
 case 134:
  i40iw_setup_termhdr(qp, termhdr, FLUSH_LOC_LEN_ERR,
        (LAYER_DDP << 4) | DDP_CATASTROPHIC, DDP_CATASTROPHIC_LOCAL);
  break;
 case 137:
 case 143:
  i40iw_setup_termhdr(qp, termhdr, FLUSH_FATAL_ERR,
        (LAYER_DDP << 4) | DDP_CATASTROPHIC, DDP_CATASTROPHIC_LOCAL);
  break;
 case 144:
  i40iw_setup_termhdr(qp, termhdr, FLUSH_GENERAL_ERR,
        (LAYER_DDP << 4) | DDP_UNTAGGED_BUFFER, DDP_UNTAGGED_INV_MSN_RANGE);
  break;
 case 142:
  qp->eventtype = TERM_EVENT_QP_ACCESS_ERR;
  i40iw_setup_termhdr(qp, termhdr, FLUSH_LOC_LEN_ERR,
        (LAYER_DDP << 4) | DDP_UNTAGGED_BUFFER, DDP_UNTAGGED_INV_TOO_LONG);
  break;
 case 141:
  if (is_tagged)
   i40iw_setup_termhdr(qp, termhdr, FLUSH_GENERAL_ERR,
         (LAYER_DDP << 4) | DDP_TAGGED_BUFFER, DDP_TAGGED_INV_DDP_VER);
  else
   i40iw_setup_termhdr(qp, termhdr, FLUSH_GENERAL_ERR,
         (LAYER_DDP << 4) | DDP_UNTAGGED_BUFFER, DDP_UNTAGGED_INV_DDP_VER);
  break;
 case 140:
  i40iw_setup_termhdr(qp, termhdr, FLUSH_GENERAL_ERR,
        (LAYER_DDP << 4) | DDP_UNTAGGED_BUFFER, DDP_UNTAGGED_INV_MO);
  break;
 case 139:
  i40iw_setup_termhdr(qp, termhdr, FLUSH_REM_OP_ERR,
        (LAYER_DDP << 4) | DDP_UNTAGGED_BUFFER, DDP_UNTAGGED_INV_MSN_NO_BUF);
  break;
 case 138:
  i40iw_setup_termhdr(qp, termhdr, FLUSH_GENERAL_ERR,
        (LAYER_DDP << 4) | DDP_UNTAGGED_BUFFER, DDP_UNTAGGED_INV_QN);
  break;
 case 132:
  i40iw_setup_termhdr(qp, termhdr, FLUSH_GENERAL_ERR,
        (LAYER_RDMA << 4) | RDMAP_REMOTE_OP, RDMAP_INV_RDMAP_VER);
  break;
 case 131:
  i40iw_setup_termhdr(qp, termhdr, FLUSH_LOC_QP_OP_ERR,
        (LAYER_RDMA << 4) | RDMAP_REMOTE_OP, RDMAP_UNEXPECTED_OP);
  break;
 default:
  i40iw_setup_termhdr(qp, termhdr, FLUSH_FATAL_ERR,
        (LAYER_RDMA << 4) | RDMAP_REMOTE_OP, RDMAP_UNSPECIFIED);
  break;
 }

 if (copy_len)
  memcpy(termhdr + 1, pkt, copy_len);

 return sizeof(struct i40iw_terminate_hdr) + copy_len;
}
