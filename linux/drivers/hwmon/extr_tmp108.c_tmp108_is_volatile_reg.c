
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int TMP108_REG_CONF ;
 unsigned int TMP108_REG_TEMP ;

__attribute__((used)) static bool tmp108_is_volatile_reg(struct device *dev, unsigned int reg)
{

 return reg == TMP108_REG_TEMP || reg == TMP108_REG_CONF;
}
