
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int AK8974_INT_CLEAR ;

__attribute__((used)) static bool ak8974_precious_reg(struct device *dev, unsigned int reg)
{
 return reg == AK8974_INT_CLEAR;
}
