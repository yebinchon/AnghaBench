
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dc_i2c {scalar_t__ regs; } ;


 scalar_t__ II_DATA ;
 int readb_relaxed (scalar_t__) ;

__attribute__((used)) static u8 dc_i2c_read_byte(struct dc_i2c *i2c)
{
 return readb_relaxed(i2c->regs + II_DATA);
}
