
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SCALE (unsigned long,int,int) ;
 unsigned long clamp_val (unsigned long,int ,int) ;

__attribute__((used)) static inline u8 AOUT_TO_REG(unsigned long val)
{
 val = clamp_val(val, 0, 1250);
 return SCALE(val, 255, 1250);
}
