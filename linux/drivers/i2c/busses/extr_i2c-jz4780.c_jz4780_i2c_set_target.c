
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct jz4780_i2c {TYPE_1__ adap; } ;


 int ENXIO ;
 int JZ4780_I2C_STA ;
 unsigned short JZ4780_I2C_STA_MSTACT ;
 unsigned short JZ4780_I2C_STA_TFE ;
 int JZ4780_I2C_TAR ;
 int dev_err (int *,char*,unsigned char,unsigned short) ;
 unsigned short jz4780_i2c_readw (struct jz4780_i2c*,int ) ;
 int jz4780_i2c_writew (struct jz4780_i2c*,int ,unsigned char) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int jz4780_i2c_set_target(struct jz4780_i2c *i2c, unsigned char address)
{
 unsigned short regval;
 unsigned long loops = 5;

 do {
  regval = jz4780_i2c_readw(i2c, JZ4780_I2C_STA);
  if ((regval & JZ4780_I2C_STA_TFE) &&
      !(regval & JZ4780_I2C_STA_MSTACT))
   break;

  usleep_range(5000, 15000);
 } while (--loops);

 if (loops) {
  jz4780_i2c_writew(i2c, JZ4780_I2C_TAR, address);
  return 0;
 }

 dev_err(&i2c->adap.dev,
  "set device to address 0x%02x failed, STA=0x%04x\n",
  address, regval);

 return -ENXIO;
}
