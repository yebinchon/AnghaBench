
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static inline int CRASHDUMP_WRITE(u64 *in, u32 reg, u32 val)
{
 in[0] = val;
 in[1] = (((u64) reg) << 44 | (1 << 21) | 1);

 return 2;
}
