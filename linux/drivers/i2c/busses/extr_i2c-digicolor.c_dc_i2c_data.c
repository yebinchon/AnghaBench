
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dc_i2c {scalar_t__ regs; } ;


 scalar_t__ II_DATA ;
 int writeb_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void dc_i2c_data(struct dc_i2c *i2c, u8 data)
{
 writeb_relaxed(data, i2c->regs + II_DATA);
}
