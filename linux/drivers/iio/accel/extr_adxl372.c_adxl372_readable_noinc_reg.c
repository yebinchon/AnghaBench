
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int ADXL372_FIFO_DATA ;

bool adxl372_readable_noinc_reg(struct device *dev, unsigned int reg)
{
 return (reg == ADXL372_FIFO_DATA);
}
