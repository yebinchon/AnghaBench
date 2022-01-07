
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xiic_i2c {int dummy; } ;


 scalar_t__ IIC_RX_FIFO_DEPTH ;
 scalar_t__ XIIC_CR_ENABLE_DEVICE_MASK ;
 int XIIC_CR_REG_OFFSET ;
 scalar_t__ XIIC_CR_TX_FIFO_RESET_MASK ;
 int XIIC_DGIER_OFFSET ;
 int XIIC_GINTR_ENABLE_MASK ;
 int XIIC_INTR_ARB_LOST_MASK ;
 int XIIC_RESETR_OFFSET ;
 int XIIC_RESET_MASK ;
 int XIIC_RFD_REG_OFFSET ;
 int xiic_clear_rx_fifo (struct xiic_i2c*) ;
 int xiic_irq_clr_en (struct xiic_i2c*,int ) ;
 int xiic_setreg32 (struct xiic_i2c*,int ,int ) ;
 int xiic_setreg8 (struct xiic_i2c*,int ,scalar_t__) ;

__attribute__((used)) static void xiic_reinit(struct xiic_i2c *i2c)
{
 xiic_setreg32(i2c, XIIC_RESETR_OFFSET, XIIC_RESET_MASK);


 xiic_setreg8(i2c, XIIC_RFD_REG_OFFSET, IIC_RX_FIFO_DEPTH - 1);


 xiic_setreg8(i2c, XIIC_CR_REG_OFFSET, XIIC_CR_TX_FIFO_RESET_MASK);


 xiic_setreg8(i2c, XIIC_CR_REG_OFFSET, XIIC_CR_ENABLE_DEVICE_MASK);


 xiic_clear_rx_fifo(i2c);


 xiic_setreg32(i2c, XIIC_DGIER_OFFSET, XIIC_GINTR_ENABLE_MASK);

 xiic_irq_clr_en(i2c, XIIC_INTR_ARB_LOST_MASK);
}
