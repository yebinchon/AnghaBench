
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct i2c_msg {int flags; } ;
struct i2c_adapter {int timeout; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct cdns_i2c {int err_status; TYPE_2__ adap; int xfer_done; struct i2c_msg* p_msg; } ;


 int CDNS_I2C_CR_NEA ;
 int CDNS_I2C_CR_OFFSET ;
 int CDNS_I2C_IDR_OFFSET ;
 int CDNS_I2C_IXR_ALL_INTR_MASK ;
 int CDNS_I2C_IXR_ARB_LOST ;
 int EAGAIN ;
 int ETIMEDOUT ;
 int I2C_M_RD ;
 int I2C_M_TEN ;
 int cdns_i2c_master_reset (struct i2c_adapter*) ;
 int cdns_i2c_mrecv (struct cdns_i2c*) ;
 int cdns_i2c_msend (struct cdns_i2c*) ;
 int cdns_i2c_readreg (int ) ;
 int cdns_i2c_writereg (int,int ) ;
 int dev_err (int ,char*) ;
 int reinit_completion (int *) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int cdns_i2c_process_msg(struct cdns_i2c *id, struct i2c_msg *msg,
  struct i2c_adapter *adap)
{
 unsigned long time_left;
 u32 reg;

 id->p_msg = msg;
 id->err_status = 0;
 reinit_completion(&id->xfer_done);


 reg = cdns_i2c_readreg(CDNS_I2C_CR_OFFSET);
 if (msg->flags & I2C_M_TEN) {
  if (reg & CDNS_I2C_CR_NEA)
   cdns_i2c_writereg(reg & ~CDNS_I2C_CR_NEA,
     CDNS_I2C_CR_OFFSET);
 } else {
  if (!(reg & CDNS_I2C_CR_NEA))
   cdns_i2c_writereg(reg | CDNS_I2C_CR_NEA,
     CDNS_I2C_CR_OFFSET);
 }


 if (msg->flags & I2C_M_RD)
  cdns_i2c_mrecv(id);
 else
  cdns_i2c_msend(id);


 time_left = wait_for_completion_timeout(&id->xfer_done, adap->timeout);
 if (time_left == 0) {
  cdns_i2c_master_reset(adap);
  dev_err(id->adap.dev.parent,
    "timeout waiting on completion\n");
  return -ETIMEDOUT;
 }

 cdns_i2c_writereg(CDNS_I2C_IXR_ALL_INTR_MASK,
     CDNS_I2C_IDR_OFFSET);


 if (id->err_status & CDNS_I2C_IXR_ARB_LOST)
  return -EAGAIN;

 return 0;
}
