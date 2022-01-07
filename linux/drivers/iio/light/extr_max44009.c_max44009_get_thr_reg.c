
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;


 int MAX44009_REG_LOWER_THR ;
 int MAX44009_REG_UPPER_THR ;

__attribute__((used)) static int max44009_get_thr_reg(enum iio_event_direction dir)
{
 switch (dir) {
 case 128:
  return MAX44009_REG_UPPER_THR;
 case 129:
  return MAX44009_REG_LOWER_THR;
 default:
  return -EINVAL;
 }
}
