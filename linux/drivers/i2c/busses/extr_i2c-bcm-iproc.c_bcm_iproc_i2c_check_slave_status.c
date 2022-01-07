
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_iproc_i2c_dev {int device; } ;


 int BIT (int ) ;
 int S_CMD_OFFSET ;
 int S_CMD_START_BUSY_SHIFT ;
 int S_CMD_STATUS_MASK ;
 int S_CMD_STATUS_SHIFT ;
 int S_CMD_STATUS_TIMEOUT ;
 int bcm_iproc_i2c_enable_disable (struct bcm_iproc_i2c_dev*,int) ;
 int bcm_iproc_i2c_slave_init (struct bcm_iproc_i2c_dev*,int) ;
 int dev_err (int ,char*) ;
 int iproc_i2c_rd_reg (struct bcm_iproc_i2c_dev*,int ) ;

__attribute__((used)) static void bcm_iproc_i2c_check_slave_status(
 struct bcm_iproc_i2c_dev *iproc_i2c)
{
 u32 val;

 val = iproc_i2c_rd_reg(iproc_i2c, S_CMD_OFFSET);

 if (val & BIT(S_CMD_START_BUSY_SHIFT))
  return;

 val = (val >> S_CMD_STATUS_SHIFT) & S_CMD_STATUS_MASK;
 if (val == S_CMD_STATUS_TIMEOUT) {
  dev_err(iproc_i2c->device, "slave random stretch time timeout\n");


  bcm_iproc_i2c_enable_disable(iproc_i2c, 0);
  bcm_iproc_i2c_slave_init(iproc_i2c, 1);
  bcm_iproc_i2c_enable_disable(iproc_i2c, 1);
 }
}
