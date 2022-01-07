
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s8 ;


 int SCALE (long,int,int) ;
 long clamp_val (long,int,int) ;

__attribute__((used)) static inline s8 TEMP_TO_REG(long val)
{
 val = clamp_val(val, -40000, 127000);
 return SCALE(val, 1, 1000);
}
