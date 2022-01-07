
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int MAX44000_REG_STATUS ;

__attribute__((used)) static bool max44000_precious_reg(struct device *dev, unsigned int reg)
{
 return reg == MAX44000_REG_STATUS;
}
