
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct jz4780_i2c {TYPE_1__ adap; } ;


 int ETIMEDOUT ;
 int JZ4780_I2C_ENB ;
 unsigned short JZ4780_I2C_ENB_I2C ;
 int JZ4780_I2C_ENSTA ;
 int dev_err (int *,char*,unsigned short) ;
 unsigned short jz4780_i2c_readw (struct jz4780_i2c*,int ) ;
 int jz4780_i2c_writew (struct jz4780_i2c*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int jz4780_i2c_disable(struct jz4780_i2c *i2c)
{
 unsigned short regval;
 unsigned long loops = 5;

 jz4780_i2c_writew(i2c, JZ4780_I2C_ENB, 0);

 do {
  regval = jz4780_i2c_readw(i2c, JZ4780_I2C_ENSTA);
  if (!(regval & JZ4780_I2C_ENB_I2C))
   return 0;

  usleep_range(5000, 15000);
 } while (--loops);

 dev_err(&i2c->adap.dev, "disable failed: ENSTA=0x%04x\n", regval);
 return -ETIMEDOUT;
}
