
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {struct apbps2_priv* port_data; } ;
struct apbps2_priv {TYPE_1__* regs; } ;
struct TYPE_2__ {int ctrl; int data; int status; } ;


 int APBPS2_CTRL_RE ;
 int APBPS2_CTRL_RI ;
 unsigned long APBPS2_STATUS_DR ;
 unsigned long ioread32be (int *) ;
 int iowrite32be (int,int *) ;

__attribute__((used)) static int apbps2_open(struct serio *io)
{
 struct apbps2_priv *priv = io->port_data;
 int limit;
 unsigned long tmp;


 iowrite32be(0, &priv->regs->status);


 limit = 1024;
 while ((ioread32be(&priv->regs->status) & APBPS2_STATUS_DR) && --limit)
  tmp = ioread32be(&priv->regs->data);


 iowrite32be(APBPS2_CTRL_RE | APBPS2_CTRL_RI, &priv->regs->ctrl);

 return 0;
}
