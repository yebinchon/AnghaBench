
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm121_correction {int slope; scalar_t__ offset; } ;
typedef int s32 ;


 int average_power ;
 struct pm121_correction** corrections ;
 int max3 (int,int,int ) ;
 int pm121_mach_model ;

__attribute__((used)) static s32 pm121_correct(s32 new_setpoint,
    unsigned int control_id,
    s32 min)
{
 s32 new_min;
 struct pm121_correction *correction;
 correction = &corrections[control_id][pm121_mach_model - 2];

 new_min = (average_power * correction->slope) >> 16;
 new_min += correction->offset;
 new_min = (new_min >> 16) + min;

 return max3(new_setpoint, new_min, 0);
}
