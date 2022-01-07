
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long s16 ;


 long clamp_val (long,int,int) ;

__attribute__((used)) static inline s16 TEMP_TO_REG(long val)
{
 val = clamp_val(val, -60000, 160000);
 return val * 10 / 625 * 8;
}
