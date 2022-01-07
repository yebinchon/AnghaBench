
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;



__attribute__((used)) static bool imx_tve_readable_reg(struct device *dev, unsigned int reg)
{
 return (reg % 4 == 0) && (reg <= 0xdc);
}
