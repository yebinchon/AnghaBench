
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



 int TEMP_TYPE_MASK ;



__attribute__((used)) static inline unsigned int temp_type_from_reg(u8 reg)
{
 switch (reg & TEMP_TYPE_MASK) {
 case 128:
  return 4;
 case 129:
 case 130:
  return 3;
 default:
  return 0;
 }
}
