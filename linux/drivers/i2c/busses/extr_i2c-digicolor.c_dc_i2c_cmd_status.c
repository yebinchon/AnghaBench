
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dc_i2c {scalar_t__ regs; } ;


 scalar_t__ II_COMMAND ;
 int II_COMMAND_COMPLETION_STATUS (int ) ;
 int readb_relaxed (scalar_t__) ;

__attribute__((used)) static int dc_i2c_cmd_status(struct dc_i2c *i2c)
{
 u8 cmd = readb_relaxed(i2c->regs + II_COMMAND);

 return II_COMMAND_COMPLETION_STATUS(cmd);
}
