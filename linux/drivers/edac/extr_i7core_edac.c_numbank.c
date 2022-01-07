
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;




__attribute__((used)) static inline int numbank(u32 bank)
{
 static const int banks[] = { 4, 8, 16, -128 };

 return banks[bank & 0x3];
}
