
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int flags; int len; int * buf; } ;


 int I2C_M_RD ;
 int kfree (int *) ;
 int memcpy (int *,int *,int ) ;

void i2c_put_dma_safe_msg_buf(u8 *buf, struct i2c_msg *msg, bool xferred)
{
 if (!buf || buf == msg->buf)
  return;

 if (xferred && msg->flags & I2C_M_RD)
  memcpy(msg->buf, buf, msg->len);

 kfree(buf);
}
