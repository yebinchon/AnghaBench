
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;


 scalar_t__ MON_SRC_AVSB ;
 scalar_t__ MON_SRC_VBAT ;
 scalar_t__ MON_SRC_VCC ;
 scalar_t__ MON_SRC_VSB ;

__attribute__((used)) static inline long in_from_reg(u16 reg, u8 src)
{
 int scale = 16;

 if (src == MON_SRC_VCC || src == MON_SRC_VSB || src == MON_SRC_AVSB ||
     src == MON_SRC_VBAT)
  scale <<= 1;
 return reg * scale;
}
