
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct send_context {int flags; scalar_t__ type; } ;
struct hfi1_devdata {int num_send_contexts; TYPE_1__* send_contexts; } ;
struct TYPE_2__ {struct send_context* sc; } ;


 int SCF_LINK_DOWN ;
 scalar_t__ SC_USER ;
 int sc_enable (struct send_context*) ;

void pio_kernel_linkup(struct hfi1_devdata *dd)
{
 struct send_context *sc;
 int i;

 for (i = 0; i < dd->num_send_contexts; i++) {
  sc = dd->send_contexts[i].sc;
  if (!sc || !(sc->flags & SCF_LINK_DOWN) || sc->type == SC_USER)
   continue;

  sc_enable(sc);
 }
}
