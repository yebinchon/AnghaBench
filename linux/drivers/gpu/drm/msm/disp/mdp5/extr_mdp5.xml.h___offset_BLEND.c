
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int INVALID_IDX (int) ;

__attribute__((used)) static inline uint32_t __offset_BLEND(uint32_t idx)
{
 switch (idx) {
  case 0: return 0x00000020;
  case 1: return 0x00000050;
  case 2: return 0x00000080;
  case 3: return 0x000000b0;
  case 4: return 0x00000230;
  case 5: return 0x00000260;
  case 6: return 0x00000290;
  default: return INVALID_IDX(idx);
 }
}
