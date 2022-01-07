
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int dev; } ;
struct mv64xxx_i2c_data {scalar_t__ state; int bytes_left; int rc; void* action; TYPE_2__* msg; TYPE_1__ adapter; int cntl_bits; int aborting; int send_stop; int byte_posn; } ;
struct TYPE_4__ {int flags; int addr; } ;


 int EIO ;
 int ENXIO ;
 int I2C_M_TEN ;
 void* MV64XXX_I2C_ACTION_CONTINUE ;
 void* MV64XXX_I2C_ACTION_RCV_DATA ;
 void* MV64XXX_I2C_ACTION_RCV_DATA_STOP ;
 void* MV64XXX_I2C_ACTION_SEND_ADDR_1 ;
 void* MV64XXX_I2C_ACTION_SEND_ADDR_2 ;
 void* MV64XXX_I2C_ACTION_SEND_DATA ;
 void* MV64XXX_I2C_ACTION_SEND_RESTART ;
 void* MV64XXX_I2C_ACTION_SEND_STOP ;
 int MV64XXX_I2C_REG_CONTROL_ACK ;
 scalar_t__ MV64XXX_I2C_STATE_IDLE ;
 scalar_t__ MV64XXX_I2C_STATE_WAITING_FOR_ADDR_1_ACK ;
 void* MV64XXX_I2C_STATE_WAITING_FOR_ADDR_2_ACK ;
 scalar_t__ MV64XXX_I2C_STATE_WAITING_FOR_RESTART ;
 scalar_t__ MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_ACK ;
 scalar_t__ MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_DATA ;
 int dev_err (int *,char*,scalar_t__,int,int ,int) ;
 int mv64xxx_i2c_hw_init (struct mv64xxx_i2c_data*) ;

__attribute__((used)) static void
mv64xxx_i2c_fsm(struct mv64xxx_i2c_data *drv_data, u32 status)
{





 if (drv_data->state == MV64XXX_I2C_STATE_IDLE) {
  drv_data->action = MV64XXX_I2C_ACTION_SEND_STOP;
  return;
 }


 switch (status) {

 case 133:
 case 134:
  drv_data->action = MV64XXX_I2C_ACTION_SEND_ADDR_1;
  drv_data->state = MV64XXX_I2C_STATE_WAITING_FOR_ADDR_1_ACK;
  break;


 case 130:
  if (drv_data->msg->flags & I2C_M_TEN) {
   drv_data->action = MV64XXX_I2C_ACTION_SEND_ADDR_2;
   drv_data->state =
    MV64XXX_I2C_STATE_WAITING_FOR_ADDR_2_ACK;
   break;
  }

 case 131:
 case 132:
  if ((drv_data->bytes_left == 0)
    || (drv_data->aborting
     && (drv_data->byte_posn != 0))) {
   if (drv_data->send_stop || drv_data->aborting) {
    drv_data->action = MV64XXX_I2C_ACTION_SEND_STOP;
    drv_data->state = MV64XXX_I2C_STATE_IDLE;
   } else {
    drv_data->action =
     MV64XXX_I2C_ACTION_SEND_RESTART;
    drv_data->state =
     MV64XXX_I2C_STATE_WAITING_FOR_RESTART;
   }
  } else {
   drv_data->action = MV64XXX_I2C_ACTION_SEND_DATA;
   drv_data->state =
    MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_ACK;
   drv_data->bytes_left--;
  }
  break;


 case 138:
  if (drv_data->msg->flags & I2C_M_TEN) {
   drv_data->action = MV64XXX_I2C_ACTION_SEND_ADDR_2;
   drv_data->state =
    MV64XXX_I2C_STATE_WAITING_FOR_ADDR_2_ACK;
   break;
  }

 case 139:
  if (drv_data->bytes_left == 0) {
   drv_data->action = MV64XXX_I2C_ACTION_SEND_STOP;
   drv_data->state = MV64XXX_I2C_STATE_IDLE;
   break;
  }

 case 136:
  if (status != 136)
   drv_data->action = MV64XXX_I2C_ACTION_CONTINUE;
  else {
   drv_data->action = MV64XXX_I2C_ACTION_RCV_DATA;
   drv_data->bytes_left--;
  }
  drv_data->state = MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_DATA;

  if ((drv_data->bytes_left == 1) || drv_data->aborting)
   drv_data->cntl_bits &= ~MV64XXX_I2C_REG_CONTROL_ACK;
  break;

 case 135:
  drv_data->action = MV64XXX_I2C_ACTION_RCV_DATA_STOP;
  drv_data->state = MV64XXX_I2C_STATE_IDLE;
  break;

 case 129:
 case 128:
 case 137:

  drv_data->action = MV64XXX_I2C_ACTION_SEND_STOP;
  drv_data->state = MV64XXX_I2C_STATE_IDLE;
  drv_data->rc = -ENXIO;
  break;

 default:
  dev_err(&drv_data->adapter.dev,
   "mv64xxx_i2c_fsm: Ctlr Error -- state: 0x%x, "
   "status: 0x%x, addr: 0x%x, flags: 0x%x\n",
    drv_data->state, status, drv_data->msg->addr,
    drv_data->msg->flags);
  drv_data->action = MV64XXX_I2C_ACTION_SEND_STOP;
  mv64xxx_i2c_hw_init(drv_data);
  drv_data->rc = -EIO;
 }
}
