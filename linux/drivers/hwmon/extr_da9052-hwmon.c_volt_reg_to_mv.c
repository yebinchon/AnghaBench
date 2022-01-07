
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_CLOSEST (int,int) ;

__attribute__((used)) static inline int volt_reg_to_mv(int value)
{
 return DIV_ROUND_CLOSEST(value * 2000, 1023) + 2500;
}
