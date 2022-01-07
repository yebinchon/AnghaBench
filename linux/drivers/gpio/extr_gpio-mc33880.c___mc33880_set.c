
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc33880 {int port_config; } ;


 int mc33880_write_config (struct mc33880*) ;

__attribute__((used)) static int __mc33880_set(struct mc33880 *mc, unsigned offset, int value)
{
 if (value)
  mc->port_config |= 1 << offset;
 else
  mc->port_config &= ~(1 << offset);

 return mc33880_write_config(mc);
}
