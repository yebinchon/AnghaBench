
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s8 ;


 int SCALE (int ,int,int) ;
 int clamp_val (long,int,int) ;

__attribute__((used)) static inline s8 TEMP_TO_REG(long val)
{
 return SCALE(clamp_val(val, -128000, 127000), 1, 1000);
}
