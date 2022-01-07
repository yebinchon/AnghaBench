
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int operation; } ;
struct nmk_i2c_dev {TYPE_1__ cli; scalar_t__ virtbase; } ;


 scalar_t__ I2C_CR ;
 int I2C_CR_PE ;
 int I2C_NO_OPERATION ;
 int clear_all_interrupts (struct nmk_i2c_dev*) ;
 int disable_all_interrupts (struct nmk_i2c_dev*) ;
 int flush_i2c_fifo (struct nmk_i2c_dev*) ;
 int i2c_clr_bit (scalar_t__,int ) ;

__attribute__((used)) static int init_hw(struct nmk_i2c_dev *dev)
{
 int stat;

 stat = flush_i2c_fifo(dev);
 if (stat)
  goto exit;


 i2c_clr_bit(dev->virtbase + I2C_CR , I2C_CR_PE);

 disable_all_interrupts(dev);

 clear_all_interrupts(dev);

 dev->cli.operation = I2C_NO_OPERATION;

exit:
 return stat;
}
