
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;



__attribute__((used)) static bool ili9322_writeable_reg(struct device *dev, unsigned int reg)
{

 if (reg == 0x00)
  return 0;
 return 1;
}
