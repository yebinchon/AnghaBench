
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i3c_master_controller {int dev; } ;
struct TYPE_2__ {unsigned long i3c; unsigned long i2c; } ;
struct i3c_bus {int mode; TYPE_1__ scl_rate; } ;
typedef enum i3c_bus_mode { ____Placeholder_i3c_bus_mode } i3c_bus_mode ;


 int EINVAL ;
 unsigned long I3C_BUS_I2C_FM_PLUS_SCL_RATE ;
 unsigned long I3C_BUS_MAX_I3C_SCL_RATE ;




 void* I3C_BUS_TYP_I3C_SCL_RATE ;
 int dev_dbg (int *,char*,unsigned long,unsigned long) ;
 struct i3c_master_controller* i3c_bus_to_i3c_master (struct i3c_bus*) ;

int i3c_bus_set_mode(struct i3c_bus *i3cbus, enum i3c_bus_mode mode,
       unsigned long max_i2c_scl_rate)
{
 struct i3c_master_controller *master = i3c_bus_to_i3c_master(i3cbus);

 i3cbus->mode = mode;

 switch (i3cbus->mode) {
 case 128:
  if (!i3cbus->scl_rate.i3c)
   i3cbus->scl_rate.i3c = I3C_BUS_TYP_I3C_SCL_RATE;
  break;
 case 131:
 case 130:
  if (!i3cbus->scl_rate.i3c)
   i3cbus->scl_rate.i3c = I3C_BUS_TYP_I3C_SCL_RATE;
  if (!i3cbus->scl_rate.i2c)
   i3cbus->scl_rate.i2c = max_i2c_scl_rate;
  break;
 case 129:
  if (!i3cbus->scl_rate.i2c)
   i3cbus->scl_rate.i2c = max_i2c_scl_rate;
  if (!i3cbus->scl_rate.i3c ||
      i3cbus->scl_rate.i3c > i3cbus->scl_rate.i2c)
   i3cbus->scl_rate.i3c = i3cbus->scl_rate.i2c;
  break;
 default:
  return -EINVAL;
 }

 dev_dbg(&master->dev, "i2c-scl = %ld Hz i3c-scl = %ld Hz\n",
  i3cbus->scl_rate.i2c, i3cbus->scl_rate.i3c);





 if (i3cbus->scl_rate.i3c > I3C_BUS_MAX_I3C_SCL_RATE ||
     i3cbus->scl_rate.i2c > I3C_BUS_I2C_FM_PLUS_SCL_RATE)
  return -EINVAL;

 return 0;
}
