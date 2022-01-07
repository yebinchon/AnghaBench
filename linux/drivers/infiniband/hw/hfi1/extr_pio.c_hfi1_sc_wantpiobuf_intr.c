
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct send_context {int credit_ctrl; } ;


 int sc_add_credit_return_intr (struct send_context*) ;
 int sc_del_credit_return_intr (struct send_context*) ;
 int sc_return_credits (struct send_context*) ;
 int trace_hfi1_wantpiointr (struct send_context*,scalar_t__,int ) ;

void hfi1_sc_wantpiobuf_intr(struct send_context *sc, u32 needint)
{
 if (needint)
  sc_add_credit_return_intr(sc);
 else
  sc_del_credit_return_intr(sc);
 trace_hfi1_wantpiointr(sc, needint, sc->credit_ctrl);
 if (needint)
  sc_return_credits(sc);
}
