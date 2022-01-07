
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
typedef int s16 ;


 int DIV_ROUND_CLOSEST (int,int) ;

__attribute__((used)) static inline int DS1621_TEMP_FROM_REG(u16 reg)
{
 return DIV_ROUND_CLOSEST(((s16)reg / 16) * 625, 10);
}
