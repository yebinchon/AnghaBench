
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_i2c {scalar_t__ regs; } ;


 scalar_t__ II_INTENABLE ;
 scalar_t__ II_INTFLAG_CLEAR ;
 int writeb_relaxed (int,scalar_t__) ;

__attribute__((used)) static void dc_i2c_set_irq(struct dc_i2c *i2c, int enable)
{
 if (enable)
  writeb_relaxed(1, i2c->regs + II_INTFLAG_CLEAR);
 writeb_relaxed(!!enable, i2c->regs + II_INTENABLE);
}
