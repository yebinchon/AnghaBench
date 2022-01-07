
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int SCH56XX_CMD_READ ;
 int sch56xx_send_cmd (int ,int ,int ,int ) ;

int sch56xx_read_virtual_reg(u16 addr, u16 reg)
{
 return sch56xx_send_cmd(addr, SCH56XX_CMD_READ, reg, 0);
}
