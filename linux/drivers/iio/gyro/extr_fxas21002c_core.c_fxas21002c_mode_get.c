
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxas21002c_data {int * regmap_fields; } ;


 int FXAS21002C_MODE_ACTIVE ;
 int FXAS21002C_MODE_READY ;
 int FXAS21002C_MODE_STANDBY ;
 size_t F_ACTIVE ;
 size_t F_READY ;
 int regmap_field_read (int ,unsigned int*) ;

__attribute__((used)) static int fxas21002c_mode_get(struct fxas21002c_data *data)
{
 unsigned int active;
 unsigned int ready;
 int ret;

 ret = regmap_field_read(data->regmap_fields[F_ACTIVE], &active);
 if (ret < 0)
  return ret;
 if (active)
  return FXAS21002C_MODE_ACTIVE;

 ret = regmap_field_read(data->regmap_fields[F_READY], &ready);
 if (ret < 0)
  return ret;
 if (ready)
  return FXAS21002C_MODE_READY;

 return FXAS21002C_MODE_STANDBY;
}
