
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ib_wq_state { ____Placeholder_ib_wq_state } ib_wq_state ;


 int IB_QPS_ERR ;
 int IB_QPS_RESET ;
 int IB_QPS_RTR ;



__attribute__((used)) static int ib_wq2qp_state(enum ib_wq_state state)
{
 switch (state) {
 case 128:
  return IB_QPS_RESET;
 case 129:
  return IB_QPS_RTR;
 default:
  return IB_QPS_ERR;
 }
}
