
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int INVALID_IDX (int) ;

__attribute__((used)) static inline uint32_t __offset_STAGE(uint32_t idx)
{
 switch (idx) {
  case 0: return 0x00000104;
  case 1: return 0x00000124;
  case 2: return 0x00000144;
  case 3: return 0x00000160;
  default: return INVALID_IDX(idx);
 }
}
