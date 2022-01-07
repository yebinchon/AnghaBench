
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv64xxx_i2c_data {scalar_t__ reg_base; } ;
struct i2c_msg {int len; int buf; } ;


 scalar_t__ MV64XXX_I2C_REG_RX_DATA_HI ;
 scalar_t__ MV64XXX_I2C_REG_RX_DATA_LO ;
 int memcpy (int ,int *,int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void
mv64xxx_i2c_read_offload_rx_data(struct mv64xxx_i2c_data *drv_data,
     struct i2c_msg *msg)
{
 u32 buf[2];

 buf[0] = readl(drv_data->reg_base + MV64XXX_I2C_REG_RX_DATA_LO);
 buf[1] = readl(drv_data->reg_base + MV64XXX_I2C_REG_RX_DATA_HI);

 memcpy(msg->buf, buf, msg->len);
}
