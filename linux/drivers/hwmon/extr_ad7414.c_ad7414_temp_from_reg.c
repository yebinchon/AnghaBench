
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s16 ;



__attribute__((used)) static inline int ad7414_temp_from_reg(s16 reg)
{




 return ((int)reg / 64) * 250;
}
