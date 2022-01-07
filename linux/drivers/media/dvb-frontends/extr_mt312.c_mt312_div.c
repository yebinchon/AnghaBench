
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 mt312_div(u32 a, u32 b)
{
 return (a + (b / 2)) / b;
}
