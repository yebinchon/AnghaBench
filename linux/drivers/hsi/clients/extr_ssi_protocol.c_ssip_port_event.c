
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_client {int dummy; } ;




 int ssip_start_rx (struct hsi_client*) ;
 int ssip_stop_rx (struct hsi_client*) ;

__attribute__((used)) static void ssip_port_event(struct hsi_client *cl, unsigned long event)
{
 switch (event) {
 case 129:
  ssip_start_rx(cl);
  break;
 case 128:
  ssip_stop_rx(cl);
  break;
 default:
  return;
 }
}
