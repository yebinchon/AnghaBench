
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct ps2if* port_data; } ;
struct ps2if {scalar_t__ base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static void altera_ps2_close(struct serio *io)
{
 struct ps2if *ps2if = io->port_data;

 writel(0, ps2if->base + 4);
}
