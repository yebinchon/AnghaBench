
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int min; int max; } ;


 TYPE_1__* accel_limits ;
 int clamp (int,int,int) ;

__attribute__((used)) static int clamp_accel(int axis, int offset)
{
 axis = clamp(axis,
   accel_limits[offset].min,
   accel_limits[offset].max);
 axis = (axis - accel_limits[offset].min) /
   ((accel_limits[offset].max -
     accel_limits[offset].min) * 0xFF);
 return axis;
}
