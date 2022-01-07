
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ina2xx_chip_info {int pga_gain_vshunt; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 unsigned int INA219_PGA_MASK ;
 unsigned int INA219_SHIFT_PGA (int) ;
 int find_closest (unsigned int,int *,int ) ;
 int * ina219_vshunt_gain_tab ;

__attribute__((used)) static int ina219_set_vshunt_pga_gain(struct ina2xx_chip_info *chip,
          unsigned int gain,
          unsigned int *config)
{
 int bits;

 if (gain < 125 || gain > 1000)
  return -EINVAL;

 bits = find_closest(gain, ina219_vshunt_gain_tab,
       ARRAY_SIZE(ina219_vshunt_gain_tab));

 chip->pga_gain_vshunt = ina219_vshunt_gain_tab[bits];
 bits = 3 - bits;

 *config &= ~INA219_PGA_MASK;
 *config |= INA219_SHIFT_PGA(bits) & INA219_PGA_MASK;

 return 0;
}
