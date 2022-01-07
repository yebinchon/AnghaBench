
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synquacer_i2c {int dev; scalar_t__ base; int pclkrate; } ;
struct i2c_msg {int addr; } ;


 int EAGAIN ;
 int EBUSY ;
 unsigned char SYNQUACER_I2C_BCR_BEIE ;
 unsigned char SYNQUACER_I2C_BCR_INTE ;
 unsigned char SYNQUACER_I2C_BCR_MSS ;
 unsigned char SYNQUACER_I2C_BCR_SCC ;
 unsigned char SYNQUACER_I2C_BSR_AL ;
 unsigned char SYNQUACER_I2C_BSR_BB ;
 scalar_t__ SYNQUACER_I2C_REG_BCR ;
 scalar_t__ SYNQUACER_I2C_REG_BSR ;
 scalar_t__ SYNQUACER_I2C_REG_DAR ;
 int WAIT_PCLK (int,int ) ;
 int dev_dbg (int ,char*,...) ;
 unsigned char i2c_8bit_addr_from_msg (struct i2c_msg*) ;
 unsigned char readb (scalar_t__) ;
 int writeb (unsigned char,scalar_t__) ;

__attribute__((used)) static int synquacer_i2c_master_start(struct synquacer_i2c *i2c,
          struct i2c_msg *pmsg)
{
 unsigned char bsr, bcr;

 writeb(i2c_8bit_addr_from_msg(pmsg), i2c->base + SYNQUACER_I2C_REG_DAR);

 dev_dbg(i2c->dev, "slave:0x%02x\n", pmsg->addr);


 bsr = readb(i2c->base + SYNQUACER_I2C_REG_BSR);
 bcr = readb(i2c->base + SYNQUACER_I2C_REG_BCR);
 dev_dbg(i2c->dev, "bsr:0x%02x, bcr:0x%02x\n", bsr, bcr);

 if ((bsr & SYNQUACER_I2C_BSR_BB) &&
     !(bcr & SYNQUACER_I2C_BCR_MSS)) {
  dev_dbg(i2c->dev, "bus is busy");
  return -EBUSY;
 }

 if (bsr & SYNQUACER_I2C_BSR_BB) {
  dev_dbg(i2c->dev, "Continuous Start");
  writeb(bcr | SYNQUACER_I2C_BCR_SCC,
         i2c->base + SYNQUACER_I2C_REG_BCR);
 } else {
  if (bcr & SYNQUACER_I2C_BCR_MSS) {
   dev_dbg(i2c->dev, "not in master mode");
   return -EAGAIN;
  }
  dev_dbg(i2c->dev, "Start Condition");

  writeb(bcr | SYNQUACER_I2C_BCR_MSS |
         SYNQUACER_I2C_BCR_INTE | SYNQUACER_I2C_BCR_BEIE,
         i2c->base + SYNQUACER_I2C_REG_BCR);
 }

 WAIT_PCLK(10, i2c->pclkrate);


 bsr = readb(i2c->base + SYNQUACER_I2C_REG_BSR);
 bcr = readb(i2c->base + SYNQUACER_I2C_REG_BCR);
 dev_dbg(i2c->dev, "bsr:0x%02x, bcr:0x%02x\n", bsr, bcr);

 if ((bsr & SYNQUACER_I2C_BSR_AL) ||
     !(bcr & SYNQUACER_I2C_BCR_MSS)) {
  dev_dbg(i2c->dev, "arbitration lost\n");
  return -EAGAIN;
 }

 return 0;
}
