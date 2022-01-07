
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct ps2if* port_data; } ;
struct ps2if {scalar_t__ base; } ;


 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int altera_ps2_open(struct serio *io)
{
 struct ps2if *ps2if = io->port_data;


 while (readl(ps2if->base) & 0xffff0000)
             ;

 writel(1, ps2if->base + 4);
 return 0;
}
