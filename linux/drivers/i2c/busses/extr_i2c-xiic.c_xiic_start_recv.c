
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct xiic_i2c {int nmsgs; int tx_pos; struct i2c_msg* tx_msg; struct i2c_msg* rx_msg; } ;
struct i2c_msg {scalar_t__ len; int flags; } ;


 int I2C_M_NOSTART ;
 scalar_t__ IIC_RX_FIFO_DEPTH ;
 int XIIC_DTR_REG_OFFSET ;
 int XIIC_INTR_BNB_MASK ;
 int XIIC_INTR_RX_FULL_MASK ;
 int XIIC_INTR_TX_ERROR_MASK ;
 int XIIC_RFD_REG_OFFSET ;
 int XIIC_TX_DYN_START_MASK ;
 int XIIC_TX_DYN_STOP_MASK ;
 int i2c_8bit_addr_from_msg (struct i2c_msg*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int xiic_irq_clr_en (struct xiic_i2c*,int) ;
 int xiic_setreg16 (struct xiic_i2c*,int ,int) ;
 int xiic_setreg8 (struct xiic_i2c*,int ,scalar_t__) ;

__attribute__((used)) static void xiic_start_recv(struct xiic_i2c *i2c)
{
 u8 rx_watermark;
 struct i2c_msg *msg = i2c->rx_msg = i2c->tx_msg;
 unsigned long flags;


 xiic_irq_clr_en(i2c, XIIC_INTR_RX_FULL_MASK | XIIC_INTR_TX_ERROR_MASK);







 rx_watermark = msg->len;
 if (rx_watermark > IIC_RX_FIFO_DEPTH)
  rx_watermark = IIC_RX_FIFO_DEPTH;
 xiic_setreg8(i2c, XIIC_RFD_REG_OFFSET, rx_watermark - 1);

 local_irq_save(flags);
 if (!(msg->flags & I2C_M_NOSTART))

  xiic_setreg16(i2c, XIIC_DTR_REG_OFFSET,
   i2c_8bit_addr_from_msg(msg) | XIIC_TX_DYN_START_MASK);

 xiic_irq_clr_en(i2c, XIIC_INTR_BNB_MASK);

 xiic_setreg16(i2c, XIIC_DTR_REG_OFFSET,
  msg->len | ((i2c->nmsgs == 1) ? XIIC_TX_DYN_STOP_MASK : 0));
 local_irq_restore(flags);

 if (i2c->nmsgs == 1)

  xiic_irq_clr_en(i2c, XIIC_INTR_BNB_MASK);


 i2c->tx_pos = msg->len;
}
