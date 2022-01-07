
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int byte; int word; int* block; } ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pmac_i2c_bus {int dummy; } ;
struct i2c_adapter {int dev; } ;
typedef int s32 ;


 int EINVAL ;
 int ENXIO ;





 char I2C_SMBUS_READ ;

 int dev_dbg (int *,char*,int,int,int) ;
 int dev_err (int *,char*,int,...) ;
 struct pmac_i2c_bus* i2c_get_adapdata (struct i2c_adapter*) ;
 int pmac_i2c_close (struct pmac_i2c_bus*) ;
 int pmac_i2c_mode_combined ;
 int pmac_i2c_mode_std ;
 int pmac_i2c_mode_stdsub ;
 int pmac_i2c_open (struct pmac_i2c_bus*,int ) ;
 int pmac_i2c_setmode (struct pmac_i2c_bus*,int) ;
 int pmac_i2c_xfer (struct pmac_i2c_bus*,int,int,int,int*,int) ;

__attribute__((used)) static s32 i2c_powermac_smbus_xfer( struct i2c_adapter* adap,
     u16 addr,
     unsigned short flags,
     char read_write,
     u8 command,
     int size,
     union i2c_smbus_data* data)
{
 struct pmac_i2c_bus *bus = i2c_get_adapdata(adap);
 int rc = 0;
 int read = (read_write == I2C_SMBUS_READ);
 int addrdir = (addr << 1) | read;
 int mode, subsize, len;
 u32 subaddr;
 u8 *buf;
 u8 local[2];

 if (size == 129 || size == 132) {
  mode = pmac_i2c_mode_std;
  subsize = 0;
  subaddr = 0;
 } else {
  mode = read ? pmac_i2c_mode_combined : pmac_i2c_mode_stdsub;
  subsize = 1;
  subaddr = command;
 }

 switch (size) {
        case 129:
  buf = ((void*)0);
  len = 0;
      break;
        case 132:
        case 131:
  buf = &data->byte;
  len = 1;
      break;
        case 128:
  if (!read) {
   local[0] = data->word & 0xff;
   local[1] = (data->word >> 8) & 0xff;
  }
  buf = local;
  len = 2;
      break;
        case 133:
  buf = data->block;
  len = data->block[0] + 1;
  break;
 case 130:
  buf = &data->block[1];
  len = data->block[0];
  break;

        default:
  return -EINVAL;
 }

 rc = pmac_i2c_open(bus, 0);
 if (rc) {
  dev_err(&adap->dev, "Failed to open I2C, err %d\n", rc);
  return rc;
 }

 rc = pmac_i2c_setmode(bus, mode);
 if (rc) {
  dev_err(&adap->dev, "Failed to set I2C mode %d, err %d\n",
   mode, rc);
  goto bail;
 }

 rc = pmac_i2c_xfer(bus, addrdir, subsize, subaddr, buf, len);
 if (rc) {
  if (rc == -ENXIO)
   dev_dbg(&adap->dev,
    "I2C transfer at 0x%02x failed, size %d, "
    "err %d\n", addrdir >> 1, size, rc);
  else
   dev_err(&adap->dev,
    "I2C transfer at 0x%02x failed, size %d, "
    "err %d\n", addrdir >> 1, size, rc);
  goto bail;
 }

 if (size == 128 && read) {
  data->word = ((u16)local[1]) << 8;
  data->word |= local[0];
 }

 bail:
 pmac_i2c_close(bus);
 return rc;
}
