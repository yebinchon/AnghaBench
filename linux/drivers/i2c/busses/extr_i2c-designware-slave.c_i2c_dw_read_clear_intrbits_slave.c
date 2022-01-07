
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_i2c_dev {int dummy; } ;


 int DW_IC_CLR_ACTIVITY ;
 int DW_IC_CLR_GEN_CALL ;
 int DW_IC_CLR_RX_DONE ;
 int DW_IC_CLR_RX_OVER ;
 int DW_IC_CLR_RX_UNDER ;
 int DW_IC_CLR_START_DET ;
 int DW_IC_CLR_STOP_DET ;
 int DW_IC_CLR_TX_ABRT ;
 int DW_IC_CLR_TX_OVER ;
 int DW_IC_INTR_ACTIVITY ;
 int DW_IC_INTR_GEN_CALL ;
 int DW_IC_INTR_RX_DONE ;
 int DW_IC_INTR_RX_OVER ;
 int DW_IC_INTR_RX_UNDER ;
 int DW_IC_INTR_START_DET ;
 int DW_IC_INTR_STAT ;
 int DW_IC_INTR_STOP_DET ;
 int DW_IC_INTR_TX_ABRT ;
 int DW_IC_INTR_TX_OVER ;
 int dw_readl (struct dw_i2c_dev*,int ) ;

__attribute__((used)) static u32 i2c_dw_read_clear_intrbits_slave(struct dw_i2c_dev *dev)
{
 u32 stat;
 stat = dw_readl(dev, DW_IC_INTR_STAT);
 if (stat & DW_IC_INTR_TX_ABRT)
  dw_readl(dev, DW_IC_CLR_TX_ABRT);
 if (stat & DW_IC_INTR_RX_UNDER)
  dw_readl(dev, DW_IC_CLR_RX_UNDER);
 if (stat & DW_IC_INTR_RX_OVER)
  dw_readl(dev, DW_IC_CLR_RX_OVER);
 if (stat & DW_IC_INTR_TX_OVER)
  dw_readl(dev, DW_IC_CLR_TX_OVER);
 if (stat & DW_IC_INTR_RX_DONE)
  dw_readl(dev, DW_IC_CLR_RX_DONE);
 if (stat & DW_IC_INTR_ACTIVITY)
  dw_readl(dev, DW_IC_CLR_ACTIVITY);
 if (stat & DW_IC_INTR_STOP_DET)
  dw_readl(dev, DW_IC_CLR_STOP_DET);
 if (stat & DW_IC_INTR_START_DET)
  dw_readl(dev, DW_IC_CLR_START_DET);
 if (stat & DW_IC_INTR_GEN_CALL)
  dw_readl(dev, DW_IC_CLR_GEN_CALL);

 return stat;
}
