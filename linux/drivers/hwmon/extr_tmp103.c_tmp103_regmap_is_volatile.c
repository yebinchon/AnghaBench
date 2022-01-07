
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int TMP103_TEMP_REG ;

__attribute__((used)) static bool tmp103_regmap_is_volatile(struct device *dev, unsigned int reg)
{
 return reg == TMP103_TEMP_REG;
}
