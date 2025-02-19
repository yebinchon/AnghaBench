
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx2967_i2c {int residue; int access_cnt; int msg_rd; int cur_trans; } ;
struct i2c_msg {int len; int flags; int buf; } ;


 int I2C_FIFO_MAX ;
 int I2C_M_RD ;
 int zx2967_i2c_flush_fifos (struct zx2967_i2c*) ;
 int zx2967_i2c_xfer_bytes (struct zx2967_i2c*,int) ;

__attribute__((used)) static int zx2967_i2c_xfer_msg(struct zx2967_i2c *i2c,
          struct i2c_msg *msg)
{
 int ret;
 int i;

 zx2967_i2c_flush_fifos(i2c);

 i2c->cur_trans = msg->buf;
 i2c->residue = msg->len;
 i2c->access_cnt = msg->len / I2C_FIFO_MAX;
 i2c->msg_rd = msg->flags & I2C_M_RD;

 for (i = 0; i < i2c->access_cnt; i++) {
  ret = zx2967_i2c_xfer_bytes(i2c, I2C_FIFO_MAX);
  if (ret)
   return ret;
 }

 if (i2c->residue > 0) {
  ret = zx2967_i2c_xfer_bytes(i2c, i2c->residue);
  if (ret)
   return ret;
 }

 i2c->residue = 0;
 i2c->access_cnt = 0;

 return 0;
}
