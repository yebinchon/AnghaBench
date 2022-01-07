
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s16 ;


 int ADT7X10_TEMP_MAX ;
 int ADT7X10_TEMP_MIN ;
 int DIV_ROUND_CLOSEST (int,int) ;
 int clamp_val (long,int ,int ) ;

__attribute__((used)) static s16 ADT7X10_TEMP_TO_REG(long temp)
{
 return DIV_ROUND_CLOSEST(clamp_val(temp, ADT7X10_TEMP_MIN,
            ADT7X10_TEMP_MAX) * 128, 1000);
}
