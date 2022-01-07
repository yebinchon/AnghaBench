
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct olpc_apsp* port_data; } ;
struct olpc_apsp {scalar_t__ base; int dev; int open_count; } ;


 unsigned long CMD_STS_MASK ;
 scalar_t__ COMMAND_FIFO_STATUS ;
 int EIO ;
 unsigned int INT_0 ;
 scalar_t__ PJ_INTERRUPT_MASK ;
 int dev_err (int ,char*) ;
 void* readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int olpc_apsp_open(struct serio *port)
{
 struct olpc_apsp *priv = port->port_data;
 unsigned int tmp;
 unsigned long l;

 if (priv->open_count++ == 0) {
  l = readl(priv->base + COMMAND_FIFO_STATUS);
  if (!(l & CMD_STS_MASK)) {
   dev_err(priv->dev, "SP cannot accept commands.\n");
   return -EIO;
  }


  tmp = readl(priv->base + PJ_INTERRUPT_MASK);
  writel(tmp & ~INT_0, priv->base + PJ_INTERRUPT_MASK);
 }

 return 0;
}
