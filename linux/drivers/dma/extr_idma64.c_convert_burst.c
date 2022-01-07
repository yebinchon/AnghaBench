
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ __fls (scalar_t__) ;

__attribute__((used)) static void convert_burst(u32 *maxburst)
{
 if (*maxburst)
  *maxburst = __fls(*maxburst);
 else
  *maxburst = 0;
}
