
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zx2967_i2c {size_t residue; int * cur_trans; } ;


 int DEV (struct zx2967_i2c*) ;
 int EINVAL ;
 size_t I2C_FIFO_MAX ;
 int REG_DATA ;
 int barrier () ;
 int dev_err (int ,char*,int) ;
 int zx2967_i2c_writesb (struct zx2967_i2c*,int *,int ,size_t) ;

__attribute__((used)) static int zx2967_i2c_fill_tx_fifo(struct zx2967_i2c *i2c)
{
 size_t residue = i2c->residue;
 u8 *buf = i2c->cur_trans;

 if (residue == 0) {
  dev_err(DEV(i2c), "residue is %d\n", (int)residue);
  return -EINVAL;
 }

 if (residue <= I2C_FIFO_MAX) {
  zx2967_i2c_writesb(i2c, buf, REG_DATA, residue);


  i2c->residue = 0;
  i2c->cur_trans = ((void*)0);
 } else {
  zx2967_i2c_writesb(i2c, buf, REG_DATA, I2C_FIFO_MAX);
  i2c->residue -= I2C_FIFO_MAX;
  i2c->cur_trans += I2C_FIFO_MAX;
 }

 barrier();

 return 0;
}
