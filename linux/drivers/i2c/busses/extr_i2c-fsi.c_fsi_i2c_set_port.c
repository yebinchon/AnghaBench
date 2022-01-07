
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fsi_i2c_port {scalar_t__ port; TYPE_1__* master; } ;
struct fsi_device {int dummy; } ;
struct TYPE_2__ {struct fsi_device* fsi; } ;


 scalar_t__ FIELD_GET (int,int) ;
 int FIELD_PREP (int,scalar_t__) ;
 int I2C_FSI_MODE ;
 int I2C_FSI_RESET_ERR ;
 int I2C_MODE_PORT ;
 int fsi_i2c_read_reg (struct fsi_device*,int ,int*) ;
 int fsi_i2c_write_reg (struct fsi_device*,int ,int*) ;

__attribute__((used)) static int fsi_i2c_set_port(struct fsi_i2c_port *port)
{
 int rc;
 struct fsi_device *fsi = port->master->fsi;
 u32 mode, dummy = 0;

 rc = fsi_i2c_read_reg(fsi, I2C_FSI_MODE, &mode);
 if (rc)
  return rc;

 if (FIELD_GET(I2C_MODE_PORT, mode) == port->port)
  return 0;

 mode = (mode & ~I2C_MODE_PORT) | FIELD_PREP(I2C_MODE_PORT, port->port);
 rc = fsi_i2c_write_reg(fsi, I2C_FSI_MODE, &mode);
 if (rc)
  return rc;


 return fsi_i2c_write_reg(fsi, I2C_FSI_RESET_ERR, &dummy);
}
