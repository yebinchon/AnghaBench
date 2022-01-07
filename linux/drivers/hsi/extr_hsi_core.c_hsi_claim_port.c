
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct hsi_port {int shared; int lock; scalar_t__ claimed; TYPE_1__ device; } ;
struct hsi_client {int pclaimed; } ;
struct TYPE_4__ {int owner; } ;


 int EBUSY ;
 int ENODEV ;
 struct hsi_port* hsi_get_port (struct hsi_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__* to_hsi_controller (int ) ;
 int try_module_get (int ) ;

int hsi_claim_port(struct hsi_client *cl, unsigned int share)
{
 struct hsi_port *port = hsi_get_port(cl);
 int err = 0;

 mutex_lock(&port->lock);
 if ((port->claimed) && (!port->shared || !share)) {
  err = -EBUSY;
  goto out;
 }
 if (!try_module_get(to_hsi_controller(port->device.parent)->owner)) {
  err = -ENODEV;
  goto out;
 }
 port->claimed++;
 port->shared = !!share;
 cl->pclaimed = 1;
out:
 mutex_unlock(&port->lock);

 return err;
}
