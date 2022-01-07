
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DIV_ROUND_CLOSEST (int,int) ;

__attribute__((used)) static inline u8 tmp103_mc_to_reg(int val)
{
 return DIV_ROUND_CLOSEST(val, 1000);
}
