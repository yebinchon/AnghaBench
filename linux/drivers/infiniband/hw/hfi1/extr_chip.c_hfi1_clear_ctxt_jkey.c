
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct hfi1_devdata {int dummy; } ;
struct hfi1_ctxtdata {int ctxt; TYPE_1__* sc; } ;
struct TYPE_2__ {int hw_context; } ;


 int EINVAL ;
 int RCV_KEY_CTRL ;
 int SEND_CTXT_CHECK_ENABLE ;
 int SEND_CTXT_CHECK_ENABLE_CHECK_JOB_KEY_SMASK ;
 int SEND_CTXT_CHECK_JOB_KEY ;
 int is_ax (struct hfi1_devdata*) ;
 int read_kctxt_csr (struct hfi1_devdata*,int ,int ) ;
 int write_kctxt_csr (struct hfi1_devdata*,int ,int ,int ) ;

int hfi1_clear_ctxt_jkey(struct hfi1_devdata *dd, struct hfi1_ctxtdata *rcd)
{
 u8 hw_ctxt;
 u64 reg;

 if (!rcd || !rcd->sc)
  return -EINVAL;

 hw_ctxt = rcd->sc->hw_context;
 write_kctxt_csr(dd, hw_ctxt, SEND_CTXT_CHECK_JOB_KEY, 0);





 if (!is_ax(dd)) {
  reg = read_kctxt_csr(dd, hw_ctxt, SEND_CTXT_CHECK_ENABLE);
  reg &= ~SEND_CTXT_CHECK_ENABLE_CHECK_JOB_KEY_SMASK;
  write_kctxt_csr(dd, hw_ctxt, SEND_CTXT_CHECK_ENABLE, reg);
 }

 write_kctxt_csr(dd, rcd->ctxt, RCV_KEY_CTRL, 0);

 return 0;
}
