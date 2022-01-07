
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bcm_iproc_i2c_dev {TYPE_1__* slave; } ;
struct TYPE_2__ {int addr; } ;


 int BIT (int ) ;
 int CFG_OFFSET ;
 int CFG_RESET_SHIFT ;
 int IE_OFFSET ;
 int IE_S_RX_EVENT_SHIFT ;
 int IE_S_START_BUSY_SHIFT ;
 int ISR_MASK_SLAVE ;
 int IS_OFFSET ;
 int SLAVE_CLOCK_STRETCH_TIME ;
 int S_CFG_EN_NIC_SMB_ADDR3_SHIFT ;
 int S_CFG_NIC_SMB_ADDR3_MASK ;
 int S_CFG_NIC_SMB_ADDR3_SHIFT ;
 int S_CFG_SMBUS_ADDR_OFFSET ;
 int S_FIFO_CTRL_OFFSET ;
 int S_FIFO_RX_FLUSH_SHIFT ;
 int S_FIFO_TX_FLUSH_SHIFT ;
 int TIM_CFG_OFFSET ;
 int TIM_RAND_SLAVE_STRETCH_MASK ;
 int TIM_RAND_SLAVE_STRETCH_SHIFT ;
 int iproc_i2c_rd_reg (struct bcm_iproc_i2c_dev*,int ) ;
 int iproc_i2c_wr_reg (struct bcm_iproc_i2c_dev*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void bcm_iproc_i2c_slave_init(
 struct bcm_iproc_i2c_dev *iproc_i2c, bool need_reset)
{
 u32 val;

 if (need_reset) {

  val = iproc_i2c_rd_reg(iproc_i2c, CFG_OFFSET);
  val |= BIT(CFG_RESET_SHIFT);
  iproc_i2c_wr_reg(iproc_i2c, CFG_OFFSET, val);


  udelay(100);


  val &= ~(BIT(CFG_RESET_SHIFT));
  iproc_i2c_wr_reg(iproc_i2c, CFG_OFFSET, val);
 }


 val = (BIT(S_FIFO_RX_FLUSH_SHIFT) | BIT(S_FIFO_TX_FLUSH_SHIFT));
 iproc_i2c_wr_reg(iproc_i2c, S_FIFO_CTRL_OFFSET, val);


 val = iproc_i2c_rd_reg(iproc_i2c, TIM_CFG_OFFSET);
 val &= ~(TIM_RAND_SLAVE_STRETCH_MASK << TIM_RAND_SLAVE_STRETCH_SHIFT);
 val |= (SLAVE_CLOCK_STRETCH_TIME << TIM_RAND_SLAVE_STRETCH_SHIFT);
 iproc_i2c_wr_reg(iproc_i2c, TIM_CFG_OFFSET, val);


 val = iproc_i2c_rd_reg(iproc_i2c, S_CFG_SMBUS_ADDR_OFFSET);
 val |= BIT(S_CFG_EN_NIC_SMB_ADDR3_SHIFT);
 val &= ~(S_CFG_NIC_SMB_ADDR3_MASK << S_CFG_NIC_SMB_ADDR3_SHIFT);
 val |= (iproc_i2c->slave->addr << S_CFG_NIC_SMB_ADDR3_SHIFT);
 iproc_i2c_wr_reg(iproc_i2c, S_CFG_SMBUS_ADDR_OFFSET, val);


 iproc_i2c_wr_reg(iproc_i2c, IS_OFFSET, ISR_MASK_SLAVE);


 val = BIT(IE_S_RX_EVENT_SHIFT);

 val |= BIT(IE_S_START_BUSY_SHIFT);
 iproc_i2c_wr_reg(iproc_i2c, IE_OFFSET, val);
}
