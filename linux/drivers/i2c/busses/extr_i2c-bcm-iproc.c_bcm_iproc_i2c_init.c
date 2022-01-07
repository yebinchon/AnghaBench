
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_iproc_i2c_dev {int dummy; } ;


 int BIT (int ) ;
 int CFG_EN_SHIFT ;
 int CFG_OFFSET ;
 int CFG_RESET_SHIFT ;
 int IE_M_ALL_INTERRUPT_MASK ;
 int IE_M_ALL_INTERRUPT_SHIFT ;
 int IE_OFFSET ;
 int IS_OFFSET ;
 int M_FIFO_CTRL_OFFSET ;
 int M_FIFO_RX_FLUSH_SHIFT ;
 int M_FIFO_TX_FLUSH_SHIFT ;
 int iproc_i2c_rd_reg (struct bcm_iproc_i2c_dev*,int ) ;
 int iproc_i2c_wr_reg (struct bcm_iproc_i2c_dev*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int bcm_iproc_i2c_init(struct bcm_iproc_i2c_dev *iproc_i2c)
{
 u32 val;


 val = iproc_i2c_rd_reg(iproc_i2c, CFG_OFFSET);
 val |= BIT(CFG_RESET_SHIFT);
 val &= ~(BIT(CFG_EN_SHIFT));
 iproc_i2c_wr_reg(iproc_i2c, CFG_OFFSET, val);


 udelay(100);


 val &= ~(BIT(CFG_RESET_SHIFT));
 iproc_i2c_wr_reg(iproc_i2c, CFG_OFFSET, val);


 val = (BIT(M_FIFO_RX_FLUSH_SHIFT) | BIT(M_FIFO_TX_FLUSH_SHIFT));
 iproc_i2c_wr_reg(iproc_i2c, M_FIFO_CTRL_OFFSET, val);

 val = iproc_i2c_rd_reg(iproc_i2c, IE_OFFSET);
 val &= ~(IE_M_ALL_INTERRUPT_MASK <<
   IE_M_ALL_INTERRUPT_SHIFT);
 iproc_i2c_wr_reg(iproc_i2c, IE_OFFSET, val);


 iproc_i2c_wr_reg(iproc_i2c, IS_OFFSET, 0xffffffff);

 return 0;
}
