
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_net {int* state; } ;


 int DVB_NET_DEVICES_MAX ;

__attribute__((used)) static int get_if(struct dvb_net *dvbnet)
{
 int i;

 for (i=0; i<DVB_NET_DEVICES_MAX; i++)
  if (!dvbnet->state[i])
   break;

 if (i == DVB_NET_DEVICES_MAX)
  return -1;

 dvbnet->state[i]=1;
 return i;
}
