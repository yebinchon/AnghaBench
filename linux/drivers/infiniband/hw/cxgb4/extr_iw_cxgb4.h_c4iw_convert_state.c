
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;


 int C4IW_QP_STATE_CLOSING ;
 int C4IW_QP_STATE_ERROR ;
 int C4IW_QP_STATE_IDLE ;
 int C4IW_QP_STATE_RTS ;
 int C4IW_QP_STATE_TERMINATE ;







__attribute__((used)) static inline int c4iw_convert_state(enum ib_qp_state ib_state)
{
 switch (ib_state) {
 case 131:
 case 132:
  return C4IW_QP_STATE_IDLE;
 case 130:
  return C4IW_QP_STATE_RTS;
 case 129:
  return C4IW_QP_STATE_CLOSING;
 case 128:
  return C4IW_QP_STATE_TERMINATE;
 case 133:
  return C4IW_QP_STATE_ERROR;
 default:
  return -1;
 }
}
