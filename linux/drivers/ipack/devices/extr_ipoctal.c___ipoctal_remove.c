
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ipoctal_channel {int tty_port; } ;
struct ipoctal {int tty_drv; struct ipoctal_channel* channel; TYPE_3__* dev; } ;
struct TYPE_6__ {TYPE_2__* bus; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* free_irq ) (TYPE_3__*) ;} ;


 int NR_CHANNELS ;
 int kfree (struct ipoctal*) ;
 int put_tty_driver (int ) ;
 int stub1 (TYPE_3__*) ;
 int tty_port_destroy (int *) ;
 int tty_port_free_xmit_buf (int *) ;
 int tty_unregister_device (int ,int) ;
 int tty_unregister_driver (int ) ;

__attribute__((used)) static void __ipoctal_remove(struct ipoctal *ipoctal)
{
 int i;

 ipoctal->dev->bus->ops->free_irq(ipoctal->dev);

 for (i = 0; i < NR_CHANNELS; i++) {
  struct ipoctal_channel *channel = &ipoctal->channel[i];
  tty_unregister_device(ipoctal->tty_drv, i);
  tty_port_free_xmit_buf(&channel->tty_port);
  tty_port_destroy(&channel->tty_port);
 }

 tty_unregister_driver(ipoctal->tty_drv);
 put_tty_driver(ipoctal->tty_drv);
 kfree(ipoctal);
}
