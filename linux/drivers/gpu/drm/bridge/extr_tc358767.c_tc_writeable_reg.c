
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int DP0_LTSTAT ;
 unsigned int DP0_SNKLTCHGREQ ;
 unsigned int TC_IDREG ;

__attribute__((used)) static bool tc_writeable_reg(struct device *dev, unsigned int reg)
{
 return (reg != TC_IDREG) &&
        (reg != DP0_LTSTAT) &&
        (reg != DP0_SNKLTCHGREQ);
}
