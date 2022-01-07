
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct ps2if* port_data; } ;
struct ps2if {int dev; int rx_irq; int tx_irq; scalar_t__ open; scalar_t__ base; } ;


 scalar_t__ PS2CR ;
 int disable_irq_wake (int ) ;
 int free_irq (int ,struct ps2if*) ;
 int sa1111_disable_device (int ) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void ps2_close(struct serio *io)
{
 struct ps2if *ps2if = io->port_data;

 writel_relaxed(0, ps2if->base + PS2CR);

 disable_irq_wake(ps2if->rx_irq);

 ps2if->open = 0;

 free_irq(ps2if->tx_irq, ps2if);
 free_irq(ps2if->rx_irq, ps2if);

 sa1111_disable_device(ps2if->dev);
}
