
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct ps2if* port_data; } ;
struct ps2if {int base; } ;


 int writel (unsigned char,int ) ;

__attribute__((used)) static int altera_ps2_write(struct serio *io, unsigned char val)
{
 struct ps2if *ps2if = io->port_data;

 writel(val, ps2if->base);
 return 0;
}
