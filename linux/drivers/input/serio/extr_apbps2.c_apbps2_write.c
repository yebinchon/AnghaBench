
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {struct apbps2_priv* port_data; } ;
struct apbps2_priv {TYPE_1__* regs; } ;
struct TYPE_2__ {int ctrl; int data; int status; } ;


 unsigned char APBPS2_CTRL_RE ;
 unsigned char APBPS2_CTRL_RI ;
 unsigned char APBPS2_CTRL_TE ;
 int APBPS2_STATUS_TF ;
 int ETIMEDOUT ;
 int ioread32be (int *) ;
 int iowrite32be (unsigned char,int *) ;
 int udelay (int) ;

__attribute__((used)) static int apbps2_write(struct serio *io, unsigned char val)
{
 struct apbps2_priv *priv = io->port_data;
 unsigned int tleft = 10000;


 while ((ioread32be(&priv->regs->status) & APBPS2_STATUS_TF) && tleft--)
  udelay(10);

 if ((ioread32be(&priv->regs->status) & APBPS2_STATUS_TF) == 0) {
  iowrite32be(val, &priv->regs->data);

  iowrite32be(APBPS2_CTRL_RE | APBPS2_CTRL_RI | APBPS2_CTRL_TE,
    &priv->regs->ctrl);
  return 0;
 }

 return -ETIMEDOUT;
}
