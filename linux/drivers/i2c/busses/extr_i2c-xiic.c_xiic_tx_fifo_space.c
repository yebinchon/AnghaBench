
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xiic_i2c {int dummy; } ;


 int IIC_TX_FIFO_DEPTH ;
 int XIIC_TFO_REG_OFFSET ;
 int xiic_getreg8 (struct xiic_i2c*,int ) ;

__attribute__((used)) static int xiic_tx_fifo_space(struct xiic_i2c *i2c)
{

 return IIC_TX_FIFO_DEPTH - xiic_getreg8(i2c, XIIC_TFO_REG_OFFSET) - 1;
}
