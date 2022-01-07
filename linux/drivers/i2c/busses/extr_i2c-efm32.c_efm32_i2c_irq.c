
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_msg {int flags; } ;
struct efm32_i2c_ddata {size_t current_msg; int done; int retval; struct i2c_msg* msgs; } ;
typedef int irqreturn_t ;


 int EAGAIN ;
 int EIO ;
 int ENXIO ;
 int I2C_M_RD ;
 int IRQ_HANDLED ;
 int REG_CMD ;
 int REG_CMD_ABORT ;
 int REG_CMD_CLEARPC ;
 int REG_CMD_CLEARTX ;
 int REG_CMD_STOP ;
 int REG_IF ;
 int REG_IFC ;
 int REG_IFC__MASK ;
 int REG_STATE ;
 int REG_STATE_NACKED ;







 int REG_STATE_STATE__MASK ;
 int complete (int *) ;
 int efm32_i2c_read32 (struct efm32_i2c_ddata*,int ) ;
 int efm32_i2c_recv_next_byte (struct efm32_i2c_ddata*) ;
 int efm32_i2c_send_next_byte (struct efm32_i2c_ddata*) ;
 int efm32_i2c_write32 (struct efm32_i2c_ddata*,int ,int) ;

__attribute__((used)) static irqreturn_t efm32_i2c_irq(int irq, void *dev_id)
{
 struct efm32_i2c_ddata *ddata = dev_id;
 struct i2c_msg *cur_msg = &ddata->msgs[ddata->current_msg];
 u32 irqflag = efm32_i2c_read32(ddata, REG_IF);
 u32 state = efm32_i2c_read32(ddata, REG_STATE);

 efm32_i2c_write32(ddata, REG_IFC, irqflag & REG_IFC__MASK);

 switch (state & REG_STATE_STATE__MASK) {
 case 130:

  ddata->retval = -EAGAIN;
  complete(&ddata->done);
  break;
 case 128:




  ddata->retval = -EIO;
  efm32_i2c_write32(ddata, REG_CMD,
    REG_CMD_STOP | REG_CMD_ABORT |
    REG_CMD_CLEARTX | REG_CMD_CLEARPC);
  complete(&ddata->done);
  break;
 case 129:

  break;
 case 134:

  break;
 case 133:
  if (state & REG_STATE_NACKED) {
   efm32_i2c_write32(ddata, REG_CMD, REG_CMD_STOP);
   ddata->retval = -ENXIO;
   complete(&ddata->done);
  } else if (cur_msg->flags & I2C_M_RD) {

  } else {
   efm32_i2c_send_next_byte(ddata);
  }
  break;
 case 132:
  if (cur_msg->flags & I2C_M_RD) {
   efm32_i2c_recv_next_byte(ddata);
  } else {

  }
  break;
 case 131:
  if (state & REG_STATE_NACKED) {
   efm32_i2c_write32(ddata, REG_CMD, REG_CMD_STOP);
   complete(&ddata->done);
  } else {
   efm32_i2c_send_next_byte(ddata);
  }
 }

 return IRQ_HANDLED;
}
