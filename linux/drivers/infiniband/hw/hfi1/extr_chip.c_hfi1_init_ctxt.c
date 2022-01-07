
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
struct send_context {scalar_t__ type; int hw_context; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;


 int CLEAR_STATIC_RATE_CONTROL_SMASK (int ) ;
 scalar_t__ HFI1_CAP_IS_KSET (int ) ;
 scalar_t__ HFI1_CAP_IS_USET (int ) ;
 scalar_t__ SC_USER ;
 int SEND_CTXT_CHECK_ENABLE ;
 int SET_STATIC_RATE_CONTROL_SMASK (int ) ;
 int STATIC_RATE_CTRL ;
 int read_kctxt_csr (struct hfi1_devdata*,int ,int ) ;
 int write_kctxt_csr (struct hfi1_devdata*,int ,int ,int ) ;

void hfi1_init_ctxt(struct send_context *sc)
{
 if (sc) {
  struct hfi1_devdata *dd = sc->dd;
  u64 reg;
  u8 set = (sc->type == SC_USER ?
     HFI1_CAP_IS_USET(STATIC_RATE_CTRL) :
     HFI1_CAP_IS_KSET(STATIC_RATE_CTRL));
  reg = read_kctxt_csr(dd, sc->hw_context,
         SEND_CTXT_CHECK_ENABLE);
  if (set)
   CLEAR_STATIC_RATE_CONTROL_SMASK(reg);
  else
   SET_STATIC_RATE_CONTROL_SMASK(reg);
  write_kctxt_csr(dd, sc->hw_context,
    SEND_CTXT_CHECK_ENABLE, reg);
 }
}
