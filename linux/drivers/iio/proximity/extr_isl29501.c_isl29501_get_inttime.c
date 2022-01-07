
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct isl29501_private {int dummy; } ;


 size_t ARRAY_SIZE (int**) ;
 int EINVAL ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int REG_INT_TIME ;
 int** isl29501_int_time ;
 int isl29501_register_read (struct isl29501_private*,int ,size_t*) ;

__attribute__((used)) static int isl29501_get_inttime(struct isl29501_private *isl29501,
    int *val, int *val2)
{
 int ret;
 u32 inttime;

 ret = isl29501_register_read(isl29501, REG_INT_TIME, &inttime);
 if (ret < 0)
  return ret;

 if (inttime >= ARRAY_SIZE(isl29501_int_time))
  return -EINVAL;

 *val = isl29501_int_time[inttime][0];
 *val2 = isl29501_int_time[inttime][1];

 return IIO_VAL_INT_PLUS_MICRO;
}
