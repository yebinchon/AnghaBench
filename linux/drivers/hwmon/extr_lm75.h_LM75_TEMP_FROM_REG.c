
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
typedef int s16 ;



__attribute__((used)) static inline int LM75_TEMP_FROM_REG(u16 reg)
{


 return ((s16)reg / 128) * 500;
}
