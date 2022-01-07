
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct respQ_msg_t {int cqe; } ;


 int CQE_OPCODE (int ) ;
 int CQE_STATUS (int ) ;
 int DDPT_BASE_BOUNDS ;
 int DDPT_INV_VERS ;
 int DDPU_INV_MO ;
 int DDPU_INV_MSN_NOBUF ;
 int DDPU_INV_MSN_RANGE ;
 int DDPU_INV_QN ;
 int DDPU_INV_VERS ;
 int DDPU_MSG_TOOBIG ;
 int DDP_LLP ;
 int DDP_LOCAL_CATA ;
 int DDP_TAGGED_ERR ;
 int DDP_UNTAGGED_ERR ;
 int LAYER_DDP ;
 int LAYER_MPA ;
 int LAYER_RDMAP ;
 int MPA_CRC_ERR ;
 int MPA_MARKER_ERR ;
 int RDMAP_ACC_VIOL ;
 int RDMAP_BASE_BOUNDS ;
 int RDMAP_CANT_INV_STAG ;
 int RDMAP_INV_OPCODE ;
 int RDMAP_INV_STAG ;
 int RDMAP_INV_VERS ;
 int RDMAP_LOCAL_CATA ;
 int RDMAP_REMOTE_OP ;
 int RDMAP_REMOTE_PROT ;
 int RDMAP_STAG_NOT_ASSOC ;
 int RDMAP_TO_WRAP ;
 int RQ_TYPE (int ) ;
 int T3_RDMA_WRITE ;
 int T3_READ_RESP ;
 int T3_SEND_WITH_INV ;
 int T3_SEND_WITH_SE_INV ;
__attribute__((used)) static inline void build_term_codes(struct respQ_msg_t *rsp_msg,
        u8 *layer_type, u8 *ecode)
{
 int status = 146;
 int tagged = 0;
 int opcode = -1;
 int rqtype = 0;
 int send_inv = 0;

 if (rsp_msg) {
  status = CQE_STATUS(rsp_msg->cqe);
  opcode = CQE_OPCODE(rsp_msg->cqe);
  rqtype = RQ_TYPE(rsp_msg->cqe);
  send_inv = (opcode == T3_SEND_WITH_INV) ||
             (opcode == T3_SEND_WITH_SE_INV);
  tagged = (opcode == T3_RDMA_WRITE) ||
    (rqtype && (opcode == T3_READ_RESP));
 }

 switch (status) {
 case 130:
  if (send_inv) {
   *layer_type = LAYER_RDMAP|RDMAP_REMOTE_OP;
   *ecode = RDMAP_CANT_INV_STAG;
  } else {
   *layer_type = LAYER_RDMAP|RDMAP_REMOTE_PROT;
   *ecode = RDMAP_INV_STAG;
  }
  break;
 case 134:
  *layer_type = LAYER_RDMAP|RDMAP_REMOTE_PROT;
  if ((opcode == T3_SEND_WITH_INV) ||
      (opcode == T3_SEND_WITH_SE_INV))
   *ecode = RDMAP_CANT_INV_STAG;
  else
   *ecode = RDMAP_STAG_NOT_ASSOC;
  break;
 case 132:
  *layer_type = LAYER_RDMAP|RDMAP_REMOTE_PROT;
  *ecode = RDMAP_STAG_NOT_ASSOC;
  break;
 case 153:
  *layer_type = LAYER_RDMAP|RDMAP_REMOTE_PROT;
  *ecode = RDMAP_ACC_VIOL;
  break;
 case 128:
  *layer_type = LAYER_RDMAP|RDMAP_REMOTE_PROT;
  *ecode = RDMAP_TO_WRAP;
  break;
 case 152:
  if (tagged) {
   *layer_type = LAYER_DDP|DDP_TAGGED_ERR;
   *ecode = DDPT_BASE_BOUNDS;
  } else {
   *layer_type = LAYER_RDMAP|RDMAP_REMOTE_PROT;
   *ecode = RDMAP_BASE_BOUNDS;
  }
  break;
 case 144:
 case 145:
  *layer_type = LAYER_RDMAP|RDMAP_REMOTE_OP;
  *ecode = RDMAP_CANT_INV_STAG;
  break;
 case 148:
 case 147:
 case 146:
  *layer_type = LAYER_RDMAP|RDMAP_LOCAL_CATA;
  *ecode = 0;
  break;
 case 136:
  *layer_type = LAYER_DDP|DDP_UNTAGGED_ERR;
  *ecode = DDPU_INV_MSN_NOBUF;
  break;
 case 135:
  *layer_type = LAYER_DDP|DDP_TAGGED_ERR;
  *ecode = DDPT_BASE_BOUNDS;
  break;
 case 151:
  *layer_type = LAYER_MPA|DDP_LLP;
  *ecode = MPA_CRC_ERR;
  break;
 case 142:
  *layer_type = LAYER_MPA|DDP_LLP;
  *ecode = MPA_MARKER_ERR;
  break;
 case 133:
  *layer_type = LAYER_DDP|DDP_UNTAGGED_ERR;
  *ecode = DDPU_MSG_TOOBIG;
  break;
 case 149:
  if (tagged) {
   *layer_type = LAYER_DDP|DDP_TAGGED_ERR;
   *ecode = DDPT_INV_VERS;
  } else {
   *layer_type = LAYER_DDP|DDP_UNTAGGED_ERR;
   *ecode = DDPU_INV_VERS;
  }
  break;
 case 131:
  *layer_type = LAYER_RDMAP|RDMAP_REMOTE_OP;
  *ecode = RDMAP_INV_VERS;
  break;
 case 137:
  *layer_type = LAYER_RDMAP|RDMAP_REMOTE_OP;
  *ecode = RDMAP_INV_OPCODE;
  break;
 case 150:
  *layer_type = LAYER_DDP|DDP_UNTAGGED_ERR;
  *ecode = DDPU_INV_QN;
  break;
 case 140:
 case 139:
 case 138:
 case 143:
  *layer_type = LAYER_DDP|DDP_UNTAGGED_ERR;
  *ecode = DDPU_INV_MSN_RANGE;
  break;
 case 129:
  *layer_type = LAYER_DDP|DDP_LOCAL_CATA;
  *ecode = 0;
  break;
 case 141:
  *layer_type = LAYER_DDP|DDP_UNTAGGED_ERR;
  *ecode = DDPU_INV_MO;
  break;
 default:
  *layer_type = LAYER_RDMAP|DDP_LOCAL_CATA;
  *ecode = 0;
  break;
 }
}
