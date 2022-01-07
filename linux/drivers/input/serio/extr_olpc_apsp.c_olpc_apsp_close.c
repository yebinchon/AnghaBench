
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct olpc_apsp* port_data; } ;
struct olpc_apsp {scalar_t__ open_count; scalar_t__ base; } ;


 unsigned int INT_0 ;
 scalar_t__ PJ_INTERRUPT_MASK ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void olpc_apsp_close(struct serio *port)
{
 struct olpc_apsp *priv = port->port_data;
 unsigned int tmp;

 if (--priv->open_count == 0) {

  tmp = readl(priv->base + PJ_INTERRUPT_MASK);
  writel(tmp | INT_0, priv->base + PJ_INTERRUPT_MASK);
 }
}
