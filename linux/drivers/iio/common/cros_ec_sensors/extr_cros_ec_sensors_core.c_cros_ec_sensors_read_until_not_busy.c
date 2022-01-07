
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cros_ec_sensors_core_state {struct cros_ec_device* ec; } ;
struct cros_ec_device {int dummy; } ;


 int EC_MEMMAP_ACC_STATUS ;
 int EC_MEMMAP_ACC_STATUS_BUSY_BIT ;
 int EIO ;
 int cros_ec_sensors_cmd_read_u8 (struct cros_ec_device*,int ,int*) ;
 int msleep (int) ;

__attribute__((used)) static int cros_ec_sensors_read_until_not_busy(
     struct cros_ec_sensors_core_state *st)
{
 struct cros_ec_device *ec = st->ec;
 u8 status;
 int ret, attempts = 0;

 ret = cros_ec_sensors_cmd_read_u8(ec, EC_MEMMAP_ACC_STATUS, &status);
 if (ret < 0)
  return ret;

 while (status & EC_MEMMAP_ACC_STATUS_BUSY_BIT) {

  if (attempts++ >= 50)
   return -EIO;


  if (attempts % 5 == 0)
   msleep(25);

  ret = cros_ec_sensors_cmd_read_u8(ec, EC_MEMMAP_ACC_STATUS,
        &status);
  if (ret < 0)
   return ret;
 }

 return status;
}
