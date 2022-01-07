
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;

__attribute__((used)) static int convert_burst(u32 maxburst)
{
 if (maxburst > 8)
  return -EINVAL;


 return (maxburst >> 2);
}
