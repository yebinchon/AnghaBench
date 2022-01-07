
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODATA ;
 int I8K_MAX_TEMP ;
 int _i8k_get_temp (int) ;
 int msleep (int) ;

__attribute__((used)) static int i8k_get_temp(int sensor)
{
 int temp = _i8k_get_temp(sensor);
 if (temp == 0x99) {
  msleep(100);
  temp = _i8k_get_temp(sensor);
 }
 if (temp > I8K_MAX_TEMP)
  return -ENODATA;

 return temp;
}
