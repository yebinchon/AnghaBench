
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {unsigned int len; int flags; int * buf; int addr; } ;


 int GFP_KERNEL ;
 int I2C_M_DMA_SAFE ;
 int I2C_M_RD ;
 int * kmemdup (int *,unsigned int,int ) ;
 int * kzalloc (unsigned int,int ) ;
 int pr_debug (char*,int ,...) ;

u8 *i2c_get_dma_safe_msg_buf(struct i2c_msg *msg, unsigned int threshold)
{

 if (!threshold)
  pr_debug("DMA buffer for addr=0x%02x with length 0 is bogus\n",
    msg->addr);
 if (msg->len < threshold || msg->len == 0)
  return ((void*)0);

 if (msg->flags & I2C_M_DMA_SAFE)
  return msg->buf;

 pr_debug("using bounce buffer for addr=0x%02x, len=%d\n",
   msg->addr, msg->len);

 if (msg->flags & I2C_M_RD)
  return kzalloc(msg->len, GFP_KERNEL);
 else
  return kmemdup(msg->buf, msg->len, GFP_KERNEL);
}
