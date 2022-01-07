
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int drop_msg; int opcode; } ;
struct rxe_qp {TYPE_1__ resp; } ;
struct rxe_pkt_info {int opcode; } ;
typedef enum resp_states { ____Placeholder_resp_states } resp_states ;
 int RESPST_CHK_OP_VALID ;
 int RESPST_CLEANUP ;
 int RESPST_ERR_MISSING_OPCODE_FIRST ;
 int RESPST_ERR_MISSING_OPCODE_LAST_C ;
 int RESPST_ERR_MISSING_OPCODE_LAST_D1E ;
 int qp_type (struct rxe_qp*) ;

__attribute__((used)) static enum resp_states check_op_seq(struct rxe_qp *qp,
         struct rxe_pkt_info *pkt)
{
 switch (qp_type(qp)) {
 case 129:
  switch (qp->resp.opcode) {
  case 142:
  case 138:
   switch (pkt->opcode) {
   case 138:
   case 141:
   case 140:
   case 139:
    return RESPST_CHK_OP_VALID;
   default:
    return RESPST_ERR_MISSING_OPCODE_LAST_C;
   }

  case 146:
  case 143:
   switch (pkt->opcode) {
   case 143:
   case 145:
   case 144:
    return RESPST_CHK_OP_VALID;
   default:
    return RESPST_ERR_MISSING_OPCODE_LAST_C;
   }

  default:
   switch (pkt->opcode) {
   case 138:
   case 141:
   case 140:
   case 139:
   case 143:
   case 145:
   case 144:
    return RESPST_ERR_MISSING_OPCODE_FIRST;
   default:
    return RESPST_CHK_OP_VALID;
   }
  }
  break;

 case 128:
  switch (qp->resp.opcode) {
  case 133:
  case 130:
   switch (pkt->opcode) {
   case 130:
   case 132:
   case 131:
    return RESPST_CHK_OP_VALID;
   default:
    return RESPST_ERR_MISSING_OPCODE_LAST_D1E;
   }

  case 137:
  case 134:
   switch (pkt->opcode) {
   case 134:
   case 136:
   case 135:
    return RESPST_CHK_OP_VALID;
   default:
    return RESPST_ERR_MISSING_OPCODE_LAST_D1E;
   }

  default:
   switch (pkt->opcode) {
   case 130:
   case 132:
   case 131:
   case 134:
   case 136:
   case 135:
    qp->resp.drop_msg = 1;
    return RESPST_CLEANUP;
   default:
    return RESPST_CHK_OP_VALID;
   }
  }
  break;

 default:
  return RESPST_CHK_OP_VALID;
 }
}
