
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static inline u32 high_address(unsigned long addr)
{
 return ((u64)addr >> 32) & 0x00000ffff;
}
