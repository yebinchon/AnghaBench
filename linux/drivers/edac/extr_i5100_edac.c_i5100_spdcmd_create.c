
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 i5100_spdcmd_create(u32 dti, u32 ckovrd, u32 sa, u32 ba,
          u32 data, u32 cmd)
{
 return ((dti & ((1 << 4) - 1)) << 28) |
  ((ckovrd & 1) << 27) |
  ((sa & ((1 << 3) - 1)) << 24) |
  ((ba & ((1 << 8) - 1)) << 16) |
  ((data & ((1 << 8) - 1)) << 8) |
  (cmd & 1);
}
