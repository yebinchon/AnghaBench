
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dc_i2c {int dummy; } ;


 int II_CMD_SEND_ACK ;
 int dc_i2c_cmd (struct dc_i2c*,int ) ;
 int dc_i2c_data (struct dc_i2c*,int ) ;

__attribute__((used)) static void dc_i2c_write_byte(struct dc_i2c *i2c, u8 byte)
{
 dc_i2c_data(i2c, byte);
 dc_i2c_cmd(i2c, II_CMD_SEND_ACK);
}
