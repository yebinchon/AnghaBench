
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int slave_adr; int operation; int count; } ;
struct nmk_i2c_dev {TYPE_1__ cli; scalar_t__ stop; } ;


 int GEN_MASK (int,int ,int) ;
 int I2C_MCR_A7 ;
 int I2C_MCR_AM ;
 int I2C_MCR_EA10 ;
 int I2C_MCR_LENGTH ;
 int I2C_MCR_OP ;
 int I2C_MCR_SB ;
 int I2C_MCR_STOP ;
 int I2C_M_TEN ;
 int I2C_READ ;
 int I2C_WRITE ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u32 load_i2c_mcr_reg(struct nmk_i2c_dev *dev, u16 flags)
{
 u32 mcr = 0;
 unsigned short slave_adr_3msb_bits;

 mcr |= GEN_MASK(dev->cli.slave_adr, I2C_MCR_A7, 1);

 if (unlikely(flags & I2C_M_TEN)) {

  mcr |= GEN_MASK(2, I2C_MCR_AM, 12);






  slave_adr_3msb_bits = (dev->cli.slave_adr >> 7) & 0x7;

  mcr |= GEN_MASK(slave_adr_3msb_bits, I2C_MCR_EA10, 8);
 } else {

  mcr |= GEN_MASK(1, I2C_MCR_AM, 12);
 }


 mcr |= GEN_MASK(0, I2C_MCR_SB, 11);


 if (dev->cli.operation == I2C_WRITE)
  mcr |= GEN_MASK(I2C_WRITE, I2C_MCR_OP, 0);
 else
  mcr |= GEN_MASK(I2C_READ, I2C_MCR_OP, 0);


 if (dev->stop)
  mcr |= GEN_MASK(1, I2C_MCR_STOP, 14);
 else
  mcr &= ~(GEN_MASK(1, I2C_MCR_STOP, 14));

 mcr |= GEN_MASK(dev->cli.count, I2C_MCR_LENGTH, 15);

 return mcr;
}
