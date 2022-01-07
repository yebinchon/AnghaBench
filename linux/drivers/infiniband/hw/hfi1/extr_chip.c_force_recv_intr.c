
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_ctxtdata {int ireg; int imask; int dd; } ;


 scalar_t__ CCE_INT_FORCE ;
 int write_csr (int ,scalar_t__,int ) ;

void force_recv_intr(struct hfi1_ctxtdata *rcd)
{
 write_csr(rcd->dd, CCE_INT_FORCE + (8 * rcd->ireg), rcd->imask);
}
