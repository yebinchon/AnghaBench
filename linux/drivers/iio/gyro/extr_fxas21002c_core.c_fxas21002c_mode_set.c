
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxas21002c_data {int mode; int prev_mode; int * regmap_fields; } ;
typedef enum fxas21002c_mode_state { ____Placeholder_fxas21002c_mode_state } fxas21002c_mode_state ;


 int FXAS21002C_MODE_ACTIVE ;
 int FXAS21002C_MODE_READY ;
 scalar_t__ FXAS21002C_MODE_STANDBY ;
 int FXAS21002C_READY_ACTIVE_TIME_MS ;
 int FXAS21002C_STANDBY_ACTIVE_TIME_MS ;
 size_t F_ACTIVE ;
 size_t F_READY ;
 int msleep_interruptible (int ) ;
 int regmap_field_write (int ,int) ;

__attribute__((used)) static int fxas21002c_mode_set(struct fxas21002c_data *data,
          enum fxas21002c_mode_state mode)
{
 int ret;

 if (mode == data->mode)
  return 0;

 if (mode == FXAS21002C_MODE_READY)
  ret = regmap_field_write(data->regmap_fields[F_READY], 1);
 else
  ret = regmap_field_write(data->regmap_fields[F_READY], 0);
 if (ret < 0)
  return ret;

 if (mode == FXAS21002C_MODE_ACTIVE)
  ret = regmap_field_write(data->regmap_fields[F_ACTIVE], 1);
 else
  ret = regmap_field_write(data->regmap_fields[F_ACTIVE], 0);
 if (ret < 0)
  return ret;


 if (mode == FXAS21002C_MODE_ACTIVE &&
     data->mode == FXAS21002C_MODE_STANDBY)
  msleep_interruptible(FXAS21002C_STANDBY_ACTIVE_TIME_MS);

 if (data->mode == FXAS21002C_MODE_READY)
  msleep_interruptible(FXAS21002C_READY_ACTIVE_TIME_MS);

 data->prev_mode = data->mode;
 data->mode = mode;

 return ret;
}
