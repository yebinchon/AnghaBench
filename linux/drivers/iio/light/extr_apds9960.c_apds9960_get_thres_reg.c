
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_chan_spec {int type; } ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int APDS9960_REG_AIHTL ;
 int APDS9960_REG_AILTL ;
 int APDS9960_REG_PIHT ;
 int APDS9960_REG_PILT ;
 int EINVAL ;





__attribute__((used)) static inline int apds9960_get_thres_reg(const struct iio_chan_spec *chan,
      enum iio_event_direction dir,
      u8 *reg)
{
 switch (dir) {
 case 130:
  switch (chan->type) {
  case 128:
   *reg = APDS9960_REG_PIHT;
   break;
  case 129:
   *reg = APDS9960_REG_AIHTL;
   break;
  default:
   return -EINVAL;
  }
  break;
 case 131:
  switch (chan->type) {
  case 128:
   *reg = APDS9960_REG_PILT;
   break;
  case 129:
   *reg = APDS9960_REG_AILTL;
   break;
  default:
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
