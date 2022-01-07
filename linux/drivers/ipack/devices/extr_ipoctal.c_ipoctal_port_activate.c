
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int dev; } ;
struct tty_port {int dummy; } ;
struct ipoctal_channel {int rx_enable; TYPE_2__* regs; } ;
struct TYPE_3__ {int cr; } ;
struct TYPE_4__ {TYPE_1__ w; } ;


 int CR_ENABLE_RX ;
 struct ipoctal_channel* dev_get_drvdata (int ) ;
 int iowrite8 (int ,int *) ;

__attribute__((used)) static int ipoctal_port_activate(struct tty_port *port, struct tty_struct *tty)
{
 struct ipoctal_channel *channel;

 channel = dev_get_drvdata(tty->dev);





 iowrite8(CR_ENABLE_RX, &channel->regs->w.cr);
 channel->rx_enable = 1;
 return 0;
}
