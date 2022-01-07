
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 int DEFAULT_KDETH_QP ;
 int RCV_BTH_QP ;
 int RCV_BTH_QP_KDETH_QP_MASK ;
 int RCV_BTH_QP_KDETH_QP_SHIFT ;
 int SEND_BTH_QP ;
 int SEND_BTH_QP_KDETH_QP_MASK ;
 int SEND_BTH_QP_KDETH_QP_SHIFT ;
 int dd_dev_err (struct hfi1_devdata*,char*) ;
 int kdeth_qp ;
 int write_csr (struct hfi1_devdata*,int ,int) ;

__attribute__((used)) static void init_kdeth_qp(struct hfi1_devdata *dd)
{

 if (kdeth_qp != 0 && kdeth_qp >= 0xff) {

  dd_dev_err(dd, "Invalid KDETH queue pair prefix, ignoring");
  kdeth_qp = 0;
 }
 if (kdeth_qp == 0)
  kdeth_qp = DEFAULT_KDETH_QP;

 write_csr(dd, SEND_BTH_QP,
    (kdeth_qp & SEND_BTH_QP_KDETH_QP_MASK) <<
    SEND_BTH_QP_KDETH_QP_SHIFT);

 write_csr(dd, RCV_BTH_QP,
    (kdeth_qp & RCV_BTH_QP_KDETH_QP_MASK) <<
    RCV_BTH_QP_KDETH_QP_SHIFT);
}
