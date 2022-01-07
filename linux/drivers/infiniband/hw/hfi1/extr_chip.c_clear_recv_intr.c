
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hfi1_devdata {int dummy; } ;
struct hfi1_ctxtdata {int ireg; int imask; struct hfi1_devdata* dd; } ;


 scalar_t__ CCE_INT_CLEAR ;
 int read_csr (struct hfi1_devdata*,scalar_t__) ;
 int write_csr (struct hfi1_devdata*,scalar_t__,int ) ;

__attribute__((used)) static inline void clear_recv_intr(struct hfi1_ctxtdata *rcd)
{
 struct hfi1_devdata *dd = rcd->dd;
 u32 addr = CCE_INT_CLEAR + (8 * rcd->ireg);

 write_csr(dd, addr, rcd->imask);

 (void)read_csr(dd, addr);
}
