
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool is_mocs_mmio(unsigned int offset)
{
 return ((offset >= 0xc800) && (offset <= 0xcff8)) ||
  ((offset >= 0xb020) && (offset <= 0xb0a0));
}
