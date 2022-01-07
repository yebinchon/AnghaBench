
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sprd_i2c {scalar_t__ count; int buf; struct i2c_msg* msg; } ;
struct i2c_msg {int flags; } ;


 scalar_t__ I2C_FIFO_DEEP ;
 scalar_t__ I2C_FIFO_FULL_THLD ;
 int I2C_M_RD ;
 int sprd_i2c_read_bytes (struct sprd_i2c*,int ,scalar_t__) ;
 int sprd_i2c_set_fifo_empty_int (struct sprd_i2c*,int) ;
 int sprd_i2c_set_fifo_full_int (struct sprd_i2c*,int) ;
 int sprd_i2c_write_bytes (struct sprd_i2c*,int ,scalar_t__) ;

__attribute__((used)) static void sprd_i2c_data_transfer(struct sprd_i2c *i2c_dev)
{
 u32 i2c_count = i2c_dev->count;
 u32 need_tran = i2c_count <= I2C_FIFO_DEEP ? i2c_count : I2C_FIFO_DEEP;
 struct i2c_msg *msg = i2c_dev->msg;

 if (msg->flags & I2C_M_RD) {
  sprd_i2c_read_bytes(i2c_dev, i2c_dev->buf, I2C_FIFO_FULL_THLD);
  i2c_dev->count -= I2C_FIFO_FULL_THLD;
  i2c_dev->buf += I2C_FIFO_FULL_THLD;






  if (i2c_dev->count >= I2C_FIFO_FULL_THLD)
   sprd_i2c_set_fifo_full_int(i2c_dev, 1);
 } else {
  sprd_i2c_write_bytes(i2c_dev, i2c_dev->buf, need_tran);
  i2c_dev->buf += need_tran;
  i2c_dev->count -= need_tran;






  if (i2c_count > I2C_FIFO_DEEP)
   sprd_i2c_set_fifo_empty_int(i2c_dev, 1);
 }
}
