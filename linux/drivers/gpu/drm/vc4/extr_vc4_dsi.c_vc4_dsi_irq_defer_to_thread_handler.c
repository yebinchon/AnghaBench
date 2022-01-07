
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vc4_dsi {int dummy; } ;
typedef int irqreturn_t ;


 int DSI_PORT_READ (int ) ;
 int INT_STAT ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;

__attribute__((used)) static irqreturn_t vc4_dsi_irq_defer_to_thread_handler(int irq, void *data)
{
 struct vc4_dsi *dsi = data;
 u32 stat = DSI_PORT_READ(INT_STAT);

 if (!stat)
  return IRQ_NONE;

 return IRQ_WAKE_THREAD;
}
