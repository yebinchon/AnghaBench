
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct hsi_client {int dummy; } ;


 int hsi_release_port (struct hsi_client*) ;
 int hsi_unregister_port_event (struct hsi_client*) ;
 int ssip_reset (struct hsi_client*) ;
 struct hsi_client* to_hsi_client (int ) ;

__attribute__((used)) static int ssip_pn_stop(struct net_device *dev)
{
 struct hsi_client *cl = to_hsi_client(dev->dev.parent);

 ssip_reset(cl);
 hsi_unregister_port_event(cl);
 hsi_release_port(cl);

 return 0;
}
