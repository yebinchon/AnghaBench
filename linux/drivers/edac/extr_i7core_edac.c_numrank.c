
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;




__attribute__((used)) static inline int numrank(u32 rank)
{
 static const int ranks[] = { 1, 2, 4, -128 };

 return ranks[rank & 0x3];
}
