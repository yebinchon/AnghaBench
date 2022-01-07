
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct goodix_chip_data {int dummy; } ;


 struct goodix_chip_data const gt1x_chip_data ;
 struct goodix_chip_data const gt911_chip_data ;
 struct goodix_chip_data const gt967_chip_data ;
 struct goodix_chip_data const gt9x_chip_data ;

__attribute__((used)) static const struct goodix_chip_data *goodix_get_chip_data(u16 id)
{
 switch (id) {
 case 1151:
 case 5663:
 case 5688:
  return &gt1x_chip_data;

 case 911:
 case 9271:
 case 9110:
 case 927:
 case 928:
  return &gt911_chip_data;

 case 912:
 case 967:
  return &gt967_chip_data;

 default:
  return &gt9x_chip_data;
 }
}
