
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct amba_kmi_port* port_data; } ;
struct amba_kmi_port {int clk; int irq; } ;


 int KMICR ;
 int clk_disable_unprepare (int ) ;
 int free_irq (int ,struct amba_kmi_port*) ;
 int writeb (int ,int ) ;

__attribute__((used)) static void amba_kmi_close(struct serio *io)
{
 struct amba_kmi_port *kmi = io->port_data;

 writeb(0, KMICR);

 free_irq(kmi->irq, kmi);
 clk_disable_unprepare(kmi->clk);
}
