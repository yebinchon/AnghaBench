
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_i2c_dev {int functionality; int slave_cfg; int mode; } ;


 int DW_IC_CON_RESTART_EN ;
 int DW_IC_CON_RX_FIFO_FULL_HLD_CTRL ;
 int DW_IC_CON_STOP_DET_IFADDRESSED ;
 int DW_IC_DEFAULT_FUNCTIONALITY ;
 int DW_IC_SLAVE ;
 int I2C_FUNC_SLAVE ;

__attribute__((used)) static void i2c_dw_configure_slave(struct dw_i2c_dev *dev)
{
 dev->functionality = I2C_FUNC_SLAVE | DW_IC_DEFAULT_FUNCTIONALITY;

 dev->slave_cfg = DW_IC_CON_RX_FIFO_FULL_HLD_CTRL |
    DW_IC_CON_RESTART_EN | DW_IC_CON_STOP_DET_IFADDRESSED;

 dev->mode = DW_IC_SLAVE;
}
