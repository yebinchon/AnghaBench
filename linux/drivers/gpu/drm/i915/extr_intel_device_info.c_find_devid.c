
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u16 ;



__attribute__((used)) static bool find_devid(u16 id, const u16 *p, unsigned int num)
{
 for (; num; num--, p++) {
  if (*p == id)
   return 1;
 }

 return 0;
}
