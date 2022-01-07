
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int has_accelerometer; } ;


 int INIT_TIMEOUT_MSECS ;
 scalar_t__ INIT_WAIT_MSECS ;
 int MOTION_SENSOR_KEY ;
 int applesmc_read_key (int ,int*,int) ;
 int applesmc_write_key (int ,int*,int) ;
 int msleep (scalar_t__) ;
 int pr_warn (char*) ;
 TYPE_1__ smcreg ;

__attribute__((used)) static void applesmc_device_init(void)
{
 int total;
 u8 buffer[2];

 if (!smcreg.has_accelerometer)
  return;

 for (total = INIT_TIMEOUT_MSECS; total > 0; total -= INIT_WAIT_MSECS) {
  if (!applesmc_read_key(MOTION_SENSOR_KEY, buffer, 2) &&
    (buffer[0] != 0x00 || buffer[1] != 0x00))
   return;
  buffer[0] = 0xe0;
  buffer[1] = 0x00;
  applesmc_write_key(MOTION_SENSOR_KEY, buffer, 2);
  msleep(INIT_WAIT_MSECS);
 }

 pr_warn("failed to init the device\n");
}
