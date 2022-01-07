
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static inline int CRASHDUMP_READ(u64 *in, u32 reg, u32 dwords, u64 target)
{
 in[0] = target;
 in[1] = (((u64) reg) << 44 | dwords);

 return 2;
}
