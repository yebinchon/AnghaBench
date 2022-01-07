
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct i2c_msg {int flags; unsigned char* buf; } ;


 int GFP_KERNEL ;
 int I2C_M_DMA_SAFE ;
 int I2C_M_RD ;
 scalar_t__ I2C_SMBUS_BLOCK_MAX ;
 unsigned char* kzalloc (scalar_t__,int ) ;

__attribute__((used)) static void i2c_smbus_try_get_dmabuf(struct i2c_msg *msg, u8 init_val)
{
 bool is_read = msg->flags & I2C_M_RD;
 unsigned char *dma_buf;

 dma_buf = kzalloc(I2C_SMBUS_BLOCK_MAX + (is_read ? 2 : 3), GFP_KERNEL);
 if (!dma_buf)
  return;

 msg->buf = dma_buf;
 msg->flags |= I2C_M_DMA_SAFE;

 if (init_val)
  msg->buf[0] = init_val;
}
