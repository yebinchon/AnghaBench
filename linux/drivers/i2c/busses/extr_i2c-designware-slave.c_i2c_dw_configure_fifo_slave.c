
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_i2c_dev {int slave_cfg; } ;


 int DW_IC_CON ;
 int DW_IC_INTR_MASK ;
 int DW_IC_INTR_SLAVE_MASK ;
 int DW_IC_RX_TL ;
 int DW_IC_TX_TL ;
 int dw_writel (struct dw_i2c_dev*,int ,int ) ;

__attribute__((used)) static void i2c_dw_configure_fifo_slave(struct dw_i2c_dev *dev)
{

 dw_writel(dev, 0, DW_IC_TX_TL);
 dw_writel(dev, 0, DW_IC_RX_TL);


 dw_writel(dev, dev->slave_cfg, DW_IC_CON);
 dw_writel(dev, DW_IC_INTR_SLAVE_MASK, DW_IC_INTR_MASK);
}
