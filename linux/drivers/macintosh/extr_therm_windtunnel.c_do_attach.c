
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_board_info {int type; } ;
struct i2c_adapter {int name; } ;
struct TYPE_2__ {int running; int poll_task; scalar_t__ fan; scalar_t__ thermostat; } ;



 int I2C_NAME_SIZE ;
 int control_loop ;
 int i2c_new_probed_device (struct i2c_adapter*,struct i2c_board_info*,unsigned short const*,int *) ;
 int kthread_run (int ,int *,char*) ;
 int memset (struct i2c_board_info*,int ,int) ;
 int strlcpy (int ,char*,int ) ;
 scalar_t__ strncmp (int ,char*,int) ;
 TYPE_1__ x ;

__attribute__((used)) static int
do_attach( struct i2c_adapter *adapter )
{

 static const unsigned short scan_ds1775[] = {
  0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f,
  128
 };
 static const unsigned short scan_adm1030[] = {
  0x2c, 0x2d, 0x2e, 0x2f,
  128
 };

 if( strncmp(adapter->name, "uni-n", 5) )
  return 0;

 if( !x.running ) {
  struct i2c_board_info info;

  memset(&info, 0, sizeof(struct i2c_board_info));
  strlcpy(info.type, "therm_ds1775", I2C_NAME_SIZE);
  i2c_new_probed_device(adapter, &info, scan_ds1775, ((void*)0));

  strlcpy(info.type, "therm_adm1030", I2C_NAME_SIZE);
  i2c_new_probed_device(adapter, &info, scan_adm1030, ((void*)0));

  if( x.thermostat && x.fan ) {
   x.running = 1;
   x.poll_task = kthread_run(control_loop, ((void*)0), "g4fand");
  }
 }
 return 0;
}
