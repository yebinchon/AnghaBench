
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct qib_ctxtdata {int ctxt; int dd; } ;


 int qib_write_ureg (int ,int ,scalar_t__,int ) ;
 int ur_rcvegrindexhead ;
 int ur_rcvhdrhead ;

__attribute__((used)) static void qib_update_7220_usrhead(struct qib_ctxtdata *rcd, u64 hd,
        u32 updegr, u32 egrhd, u32 npkts)
{
 if (updegr)
  qib_write_ureg(rcd->dd, ur_rcvegrindexhead, egrhd, rcd->ctxt);
 qib_write_ureg(rcd->dd, ur_rcvhdrhead, hd, rcd->ctxt);
}
