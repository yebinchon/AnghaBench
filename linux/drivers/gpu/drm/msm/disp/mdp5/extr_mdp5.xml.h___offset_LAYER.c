
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int INVALID_IDX (int) ;

__attribute__((used)) static inline uint32_t __offset_LAYER(uint32_t idx)
{
 switch (idx) {
  case 0: return 0x00000000;
  case 1: return 0x00000004;
  case 2: return 0x00000008;
  case 3: return 0x0000000c;
  case 4: return 0x00000010;
  case 5: return 0x00000024;
  default: return INVALID_IDX(idx);
 }
}
