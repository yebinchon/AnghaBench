
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EINVAL ;

__attribute__((used)) static int fsi_check_access(uint32_t addr, size_t size)
{
 if (size == 4) {
  if (addr & 0x3)
   return -EINVAL;
 } else if (size == 2) {
  if (addr & 0x1)
   return -EINVAL;
 } else if (size != 1)
  return -EINVAL;

 return 0;
}
