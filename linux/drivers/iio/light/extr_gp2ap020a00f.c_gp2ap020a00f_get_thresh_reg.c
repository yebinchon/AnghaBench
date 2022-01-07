
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_chan_spec {int type; } ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;
 int GP2AP020A00F_PH_L_REG ;
 int GP2AP020A00F_PL_L_REG ;
 int GP2AP020A00F_TH_L_REG ;
 int GP2AP020A00F_TL_L_REG ;
 int IIO_EV_DIR_RISING ;



__attribute__((used)) static u8 gp2ap020a00f_get_thresh_reg(const struct iio_chan_spec *chan,
          enum iio_event_direction event_dir)
{
 switch (chan->type) {
 case 128:
  if (event_dir == IIO_EV_DIR_RISING)
   return GP2AP020A00F_PH_L_REG;
  else
   return GP2AP020A00F_PL_L_REG;
 case 129:
  if (event_dir == IIO_EV_DIR_RISING)
   return GP2AP020A00F_TH_L_REG;
  else
   return GP2AP020A00F_TL_L_REG;
 default:
  break;
 }

 return -EINVAL;
}
