
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_qp {int dummy; } ;
struct rxe_pkt_info {int dummy; } ;
typedef enum resp_states { ____Placeholder_resp_states } resp_states ;




 int RESPST_CHK_RKEY ;
 int qp_type (struct rxe_qp*) ;

__attribute__((used)) static enum resp_states check_length(struct rxe_qp *qp,
         struct rxe_pkt_info *pkt)
{
 switch (qp_type(qp)) {
 case 129:
  return RESPST_CHK_RKEY;

 case 128:
  return RESPST_CHK_RKEY;

 default:
  return RESPST_CHK_RKEY;
 }
}
