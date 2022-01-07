
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int SCH56XX_CMD_WRITE ;
 int sch56xx_send_cmd (int ,int ,int ,int ) ;

int sch56xx_write_virtual_reg(u16 addr, u16 reg, u8 val)
{
 return sch56xx_send_cmd(addr, SCH56XX_CMD_WRITE, reg, val);
}
