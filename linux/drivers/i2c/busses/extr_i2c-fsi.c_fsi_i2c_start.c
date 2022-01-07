
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_msg {int flags; int len; int addr; } ;
struct fsi_i2c_port {scalar_t__ xfrd; struct fsi_i2c_master* master; } ;
struct fsi_i2c_master {int fsi; } ;


 int FIELD_PREP (int ,int ) ;
 int I2C_CMD_ADDR ;
 int I2C_CMD_LEN ;
 int I2C_CMD_READ ;
 int I2C_CMD_WITH_ADDR ;
 int I2C_CMD_WITH_START ;
 int I2C_CMD_WITH_STOP ;
 int I2C_FSI_CMD ;
 int I2C_M_RD ;
 int I2C_M_STOP ;
 int fsi_i2c_write_reg (int ,int ,int*) ;

__attribute__((used)) static int fsi_i2c_start(struct fsi_i2c_port *port, struct i2c_msg *msg,
    bool stop)
{
 struct fsi_i2c_master *i2c = port->master;
 u32 cmd = I2C_CMD_WITH_START | I2C_CMD_WITH_ADDR;

 port->xfrd = 0;

 if (msg->flags & I2C_M_RD)
  cmd |= I2C_CMD_READ;

 if (stop || msg->flags & I2C_M_STOP)
  cmd |= I2C_CMD_WITH_STOP;

 cmd |= FIELD_PREP(I2C_CMD_ADDR, msg->addr);
 cmd |= FIELD_PREP(I2C_CMD_LEN, msg->len);

 return fsi_i2c_write_reg(i2c->fsi, I2C_FSI_CMD, &cmd);
}
