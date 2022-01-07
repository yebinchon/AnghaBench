
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmac_i2c_bus {int dummy; } ;
struct i2c_msg {int flags; int len; int buf; } ;
struct i2c_adapter {int dev; } ;


 int EINVAL ;
 int ENXIO ;
 int I2C_M_TEN ;
 int dev_dbg (int *,char*,char*,int,int) ;
 int dev_err (int *,char*,...) ;
 int i2c_8bit_addr_from_msg (struct i2c_msg*) ;
 struct pmac_i2c_bus* i2c_get_adapdata (struct i2c_adapter*) ;
 int pmac_i2c_close (struct pmac_i2c_bus*) ;
 int pmac_i2c_mode_std ;
 int pmac_i2c_open (struct pmac_i2c_bus*,int ) ;
 int pmac_i2c_setmode (struct pmac_i2c_bus*,int ) ;
 int pmac_i2c_xfer (struct pmac_i2c_bus*,int,int ,int ,int ,int ) ;

__attribute__((used)) static int i2c_powermac_master_xfer( struct i2c_adapter *adap,
     struct i2c_msg *msgs,
     int num)
{
 struct pmac_i2c_bus *bus = i2c_get_adapdata(adap);
 int rc = 0;
 int addrdir;

 if (msgs->flags & I2C_M_TEN)
  return -EINVAL;
 addrdir = i2c_8bit_addr_from_msg(msgs);

 rc = pmac_i2c_open(bus, 0);
 if (rc) {
  dev_err(&adap->dev, "Failed to open I2C, err %d\n", rc);
  return rc;
 }
 rc = pmac_i2c_setmode(bus, pmac_i2c_mode_std);
 if (rc) {
  dev_err(&adap->dev, "Failed to set I2C mode %d, err %d\n",
   pmac_i2c_mode_std, rc);
  goto bail;
 }
 rc = pmac_i2c_xfer(bus, addrdir, 0, 0, msgs->buf, msgs->len);
 if (rc < 0) {
  if (rc == -ENXIO)
   dev_dbg(&adap->dev, "I2C %s 0x%02x failed, err %d\n",
    addrdir & 1 ? "read from" : "write to",
    addrdir >> 1, rc);
  else
   dev_err(&adap->dev, "I2C %s 0x%02x failed, err %d\n",
    addrdir & 1 ? "read from" : "write to",
    addrdir >> 1, rc);
 }
 bail:
 pmac_i2c_close(bus);
 return rc < 0 ? rc : 1;
}
