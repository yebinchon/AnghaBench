
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IIO_VAL_INT_PLUS_MICRO ;

int mma9551_read_accel_scale(int *val, int *val2)
{
 *val = 0;
 *val2 = 2440;

 return IIO_VAL_INT_PLUS_MICRO;
}
