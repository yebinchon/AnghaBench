
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcmsptwi_data {int dummy; } ;
struct pmcmsptwi_cmd {int addr; int * write_data; scalar_t__ write_len; int * read_data; scalar_t__ read_len; int type; } ;
struct pmcmsptwi_cfg {int add10; } ;
struct i2c_msg {int flags; scalar_t__ len; int addr; int * buf; } ;
struct i2c_adapter {int dev; } ;
typedef int oldcfg ;


 int EIO ;
 int I2C_M_RD ;
 int I2C_M_TEN ;
 int MSP_TWI_CMD_READ ;
 int MSP_TWI_CMD_WRITE ;
 int MSP_TWI_CMD_WRITE_READ ;
 int MSP_TWI_XFER_OK ;
 int dev_dbg (int *,char*,char*,scalar_t__,char*) ;
 struct pmcmsptwi_data* i2c_get_adapdata (struct i2c_adapter*) ;
 int memcpy (struct pmcmsptwi_cfg*,struct pmcmsptwi_cfg*,int) ;
 int pmcmsptwi_get_twi_config (struct pmcmsptwi_cfg*,struct pmcmsptwi_data*) ;
 int pmcmsptwi_set_twi_config (struct pmcmsptwi_cfg*,struct pmcmsptwi_data*) ;
 int pmcmsptwi_xfer_cmd (struct pmcmsptwi_cmd*,struct pmcmsptwi_data*) ;

__attribute__((used)) static int pmcmsptwi_master_xfer(struct i2c_adapter *adap,
    struct i2c_msg *msg, int num)
{
 struct pmcmsptwi_data *data = i2c_get_adapdata(adap);
 struct pmcmsptwi_cmd cmd;
 struct pmcmsptwi_cfg oldcfg, newcfg;
 int ret;

 if (num == 2) {
  struct i2c_msg *nextmsg = msg + 1;

  cmd.type = MSP_TWI_CMD_WRITE_READ;
  cmd.write_len = msg->len;
  cmd.write_data = msg->buf;
  cmd.read_len = nextmsg->len;
  cmd.read_data = nextmsg->buf;
 } else if (msg->flags & I2C_M_RD) {
  cmd.type = MSP_TWI_CMD_READ;
  cmd.read_len = msg->len;
  cmd.read_data = msg->buf;
  cmd.write_len = 0;
  cmd.write_data = ((void*)0);
 } else {
  cmd.type = MSP_TWI_CMD_WRITE;
  cmd.read_len = 0;
  cmd.read_data = ((void*)0);
  cmd.write_len = msg->len;
  cmd.write_data = msg->buf;
 }

 cmd.addr = msg->addr;

 if (msg->flags & I2C_M_TEN) {
  pmcmsptwi_get_twi_config(&newcfg, data);
  memcpy(&oldcfg, &newcfg, sizeof(oldcfg));


  newcfg.add10 = 1;

  pmcmsptwi_set_twi_config(&newcfg, data);
 }


 ret = pmcmsptwi_xfer_cmd(&cmd, data);

 if (msg->flags & I2C_M_TEN)
  pmcmsptwi_set_twi_config(&oldcfg, data);

 dev_dbg(&adap->dev, "I2C %s of %d bytes %s\n",
  (msg->flags & I2C_M_RD) ? "read" : "write", msg->len,
  (ret == MSP_TWI_XFER_OK) ? "succeeded" : "failed");

 if (ret != MSP_TWI_XFER_OK) {




  return -EIO;
 }

 return num;
}
