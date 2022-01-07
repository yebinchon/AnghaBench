
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_gpio_rec {scalar_t__ reg; int mask; } ;
struct radeon_hpd {void* hpd; struct radeon_gpio_rec gpio; } ;
struct radeon_device {int dummy; } ;


 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE6 (struct radeon_device*) ;
 scalar_t__ AVIVO_DC_GPIO_HPD_A ;
 scalar_t__ EVERGREEN_DC_GPIO_HPD_A ;
 void* RADEON_HPD_1 ;
 void* RADEON_HPD_2 ;
 void* RADEON_HPD_3 ;
 void* RADEON_HPD_4 ;
 void* RADEON_HPD_5 ;
 void* RADEON_HPD_6 ;
 void* RADEON_HPD_NONE ;
 scalar_t__ SI_DC_GPIO_HPD_A ;
 int memset (struct radeon_hpd*,int ,int) ;

__attribute__((used)) static struct radeon_hpd radeon_atom_get_hpd_info_from_gpio(struct radeon_device *rdev,
           struct radeon_gpio_rec *gpio)
{
 struct radeon_hpd hpd;
 u32 reg;

 memset(&hpd, 0, sizeof(struct radeon_hpd));

 if (ASIC_IS_DCE6(rdev))
  reg = SI_DC_GPIO_HPD_A;
 else if (ASIC_IS_DCE4(rdev))
  reg = EVERGREEN_DC_GPIO_HPD_A;
 else
  reg = AVIVO_DC_GPIO_HPD_A;

 hpd.gpio = *gpio;
 if (gpio->reg == reg) {
  switch(gpio->mask) {
  case (1 << 0):
   hpd.hpd = RADEON_HPD_1;
   break;
  case (1 << 8):
   hpd.hpd = RADEON_HPD_2;
   break;
  case (1 << 16):
   hpd.hpd = RADEON_HPD_3;
   break;
  case (1 << 24):
   hpd.hpd = RADEON_HPD_4;
   break;
  case (1 << 26):
   hpd.hpd = RADEON_HPD_5;
   break;
  case (1 << 28):
   hpd.hpd = RADEON_HPD_6;
   break;
  default:
   hpd.hpd = RADEON_HPD_NONE;
   break;
  }
 } else
  hpd.hpd = RADEON_HPD_NONE;
 return hpd;
}
