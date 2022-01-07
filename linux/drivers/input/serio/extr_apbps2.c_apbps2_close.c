
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {struct apbps2_priv* port_data; } ;
struct apbps2_priv {TYPE_1__* regs; } ;
struct TYPE_2__ {int ctrl; } ;


 int iowrite32be (int ,int *) ;

__attribute__((used)) static void apbps2_close(struct serio *io)
{
 struct apbps2_priv *priv = io->port_data;


 iowrite32be(0, &priv->regs->ctrl);
}
