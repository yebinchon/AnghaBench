
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int INVALID_IDX (int) ;

__attribute__((used)) static inline uint32_t __offset_STAGE_CO3(uint32_t idx)
{
 switch (idx) {
  case 0: return 0x00001004;
  case 1: return 0x00001404;
  case 2: return 0x00001804;
  case 3: return 0x00001b84;
  default: return INVALID_IDX(idx);
 }
}
