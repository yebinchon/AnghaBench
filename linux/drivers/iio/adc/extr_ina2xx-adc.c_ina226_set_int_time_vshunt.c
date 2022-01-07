
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ina2xx_chip_info {int int_time_vshunt; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 unsigned int INA226_ITS_MASK ;
 unsigned int INA226_SHIFT_ITS (int) ;
 int find_closest (unsigned int,int *,int ) ;
 int * ina226_conv_time_tab ;

__attribute__((used)) static int ina226_set_int_time_vshunt(struct ina2xx_chip_info *chip,
          unsigned int val_us, unsigned int *config)
{
 int bits;

 if (val_us > 8244 || val_us < 140)
  return -EINVAL;

 bits = find_closest(val_us, ina226_conv_time_tab,
       ARRAY_SIZE(ina226_conv_time_tab));

 chip->int_time_vshunt = ina226_conv_time_tab[bits];

 *config &= ~INA226_ITS_MASK;
 *config |= INA226_SHIFT_ITS(bits) & INA226_ITS_MASK;

 return 0;
}
