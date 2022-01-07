
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ina2xx_chip_info {int avg; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 unsigned int INA226_AVG_MASK ;
 unsigned int INA226_SHIFT_AVG (int) ;
 int find_closest (unsigned int,int *,int ) ;
 int * ina226_avg_tab ;

__attribute__((used)) static int ina226_set_average(struct ina2xx_chip_info *chip, unsigned int val,
         unsigned int *config)
{
 int bits;

 if (val > 1024 || val < 1)
  return -EINVAL;

 bits = find_closest(val, ina226_avg_tab,
       ARRAY_SIZE(ina226_avg_tab));

 chip->avg = ina226_avg_tab[bits];

 *config &= ~INA226_AVG_MASK;
 *config |= INA226_SHIFT_AVG(bits) & INA226_AVG_MASK;

 return 0;
}
