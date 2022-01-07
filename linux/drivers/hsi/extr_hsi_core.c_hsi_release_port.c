
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct hsi_port {scalar_t__ claimed; int lock; TYPE_1__ device; scalar_t__ shared; int (* release ) (struct hsi_client*) ;} ;
struct hsi_client {scalar_t__ pclaimed; } ;
struct TYPE_4__ {int owner; } ;


 int BUG_ON (int) ;
 struct hsi_port* hsi_get_port (struct hsi_client*) ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct hsi_client*) ;
 TYPE_2__* to_hsi_controller (int ) ;

void hsi_release_port(struct hsi_client *cl)
{
 struct hsi_port *port = hsi_get_port(cl);

 mutex_lock(&port->lock);

 port->release(cl);
 if (cl->pclaimed)
  port->claimed--;
 BUG_ON(port->claimed < 0);
 cl->pclaimed = 0;
 if (!port->claimed)
  port->shared = 0;
 module_put(to_hsi_controller(port->device.parent)->owner);
 mutex_unlock(&port->lock);
}
