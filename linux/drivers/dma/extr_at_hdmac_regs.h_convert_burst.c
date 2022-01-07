
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int fls (int) ;

__attribute__((used)) static inline void convert_burst(u32 *maxburst)
{
 if (*maxburst > 1)
  *maxburst = fls(*maxburst) - 2;
 else
  *maxburst = 0;
}
