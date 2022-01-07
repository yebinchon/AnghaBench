
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 unsigned int SCALE (int ,int,int) ;

__attribute__((used)) static inline unsigned int AOUT_FROM_REG(u8 reg)
{
 return SCALE(reg, 1250, 255);
}
