
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32
clk_same(u32 a, u32 b)
{
 return ((a / 1000) == (b / 1000));
}
