
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad_sigma_delta {int dummy; } ;
struct ad7791_state {int mode; } ;
typedef enum ad_sigma_delta_mode { ____Placeholder_ad_sigma_delta_mode } ad_sigma_delta_mode ;


 int AD7791_MODE_CONTINUOUS ;
 int AD7791_MODE_POWERDOWN ;
 int AD7791_MODE_SEL (int) ;
 int AD7791_MODE_SEL_MASK ;
 int AD7791_MODE_SINGLE ;
 int AD7791_REG_MODE ;




 int ad_sd_write_reg (struct ad_sigma_delta*,int ,int,int ) ;
 struct ad7791_state* ad_sigma_delta_to_ad7791 (struct ad_sigma_delta*) ;

__attribute__((used)) static int ad7791_set_mode(struct ad_sigma_delta *sd,
 enum ad_sigma_delta_mode mode)
{
 struct ad7791_state *st = ad_sigma_delta_to_ad7791(sd);

 switch (mode) {
 case 131:
  mode = AD7791_MODE_CONTINUOUS;
  break;
 case 128:
  mode = AD7791_MODE_SINGLE;
  break;
 case 130:
 case 129:
  mode = AD7791_MODE_POWERDOWN;
  break;
 }

 st->mode &= ~AD7791_MODE_SEL_MASK;
 st->mode |= AD7791_MODE_SEL(mode);

 return ad_sd_write_reg(sd, AD7791_REG_MODE, sizeof(st->mode), st->mode);
}
