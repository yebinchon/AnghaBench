
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_net {int exit; int * state; TYPE_1__* dvbdev; } ;
struct TYPE_2__ {int users; int wait_queue; } ;


 int DVB_NET_DEVICES_MAX ;
 int dvb_net_remove_if (struct dvb_net*,int) ;
 int dvb_unregister_device (TYPE_1__*) ;
 int wait_event (int ,int) ;

void dvb_net_release (struct dvb_net *dvbnet)
{
 int i;

 dvbnet->exit = 1;
 if (dvbnet->dvbdev->users < 1)
  wait_event(dvbnet->dvbdev->wait_queue,
    dvbnet->dvbdev->users==1);

 dvb_unregister_device(dvbnet->dvbdev);

 for (i=0; i<DVB_NET_DEVICES_MAX; i++) {
  if (!dvbnet->state[i])
   continue;
  dvb_net_remove_if(dvbnet, i);
 }
}
