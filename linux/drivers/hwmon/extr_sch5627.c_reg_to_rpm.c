
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int EIO ;

__attribute__((used)) static int reg_to_rpm(u16 reg)
{
 if (reg == 0)
  return -EIO;
 if (reg == 0xffff)
  return 0;

 return 5400540 / reg;
}
