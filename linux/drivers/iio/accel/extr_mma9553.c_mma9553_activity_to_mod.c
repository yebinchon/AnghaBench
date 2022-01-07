
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum iio_modifier { ____Placeholder_iio_modifier } iio_modifier ;
typedef enum activity_level { ____Placeholder_activity_level } activity_level ;







 int IIO_MOD_JOGGING ;
 int IIO_MOD_RUNNING ;
 int IIO_MOD_STILL ;
 int IIO_MOD_WALKING ;
 int IIO_NO_MOD ;

__attribute__((used)) static enum iio_modifier mma9553_activity_to_mod(enum activity_level activity)
{
 switch (activity) {
 case 130:
  return IIO_MOD_RUNNING;
 case 132:
  return IIO_MOD_JOGGING;
 case 128:
  return IIO_MOD_WALKING;
 case 131:
  return IIO_MOD_STILL;
 case 129:
 default:
  return IIO_NO_MOD;
 }
}
