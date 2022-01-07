
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_context {int dummy; } ;


 int sc_wait_for_packet_egress (struct send_context*,int) ;

void sc_flush(struct send_context *sc)
{
 if (!sc)
  return;

 sc_wait_for_packet_egress(sc, 1);
}
