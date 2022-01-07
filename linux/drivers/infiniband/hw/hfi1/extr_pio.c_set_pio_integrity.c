
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct send_context {int type; int hw_context; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;


 int CHECK_ENABLE ;
 int SC (int ) ;
 int hfi1_pkt_default_send_ctxt_mask (struct hfi1_devdata*,int) ;
 int write_kctxt_csr (struct hfi1_devdata*,int ,int ,int ) ;

void set_pio_integrity(struct send_context *sc)
{
 struct hfi1_devdata *dd = sc->dd;
 u32 hw_context = sc->hw_context;
 int type = sc->type;

 write_kctxt_csr(dd, hw_context,
   SC(CHECK_ENABLE),
   hfi1_pkt_default_send_ctxt_mask(dd, type));
}
