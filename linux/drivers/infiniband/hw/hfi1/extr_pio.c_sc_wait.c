
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct send_context {int dummy; } ;
struct hfi1_devdata {int num_send_contexts; TYPE_1__* send_contexts; } ;
struct TYPE_2__ {struct send_context* sc; } ;


 int sc_wait_for_packet_egress (struct send_context*,int ) ;

void sc_wait(struct hfi1_devdata *dd)
{
 int i;

 for (i = 0; i < dd->num_send_contexts; i++) {
  struct send_context *sc = dd->send_contexts[i].sc;

  if (!sc)
   continue;
  sc_wait_for_packet_egress(sc, 0);
 }
}
