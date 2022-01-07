
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad_sigma_delta {int dummy; } ;
struct ad7780_state {int odr; int gain; struct ad7780_chip_info* chip_info; } ;
struct ad7780_chip_info {unsigned int pattern_mask; unsigned int pattern; scalar_t__ is_ad778x; } ;


 unsigned int AD7780_ERR ;
 unsigned int AD7780_FILTER ;
 unsigned int AD7780_GAIN ;
 int EIO ;
 int * ad778x_gain ;
 int * ad778x_odr_avail ;
 struct ad7780_state* ad_sigma_delta_to_ad7780 (struct ad_sigma_delta*) ;

__attribute__((used)) static int ad7780_postprocess_sample(struct ad_sigma_delta *sigma_delta,
         unsigned int raw_sample)
{
 struct ad7780_state *st = ad_sigma_delta_to_ad7780(sigma_delta);
 const struct ad7780_chip_info *chip_info = st->chip_info;

 if ((raw_sample & AD7780_ERR) ||
     ((raw_sample & chip_info->pattern_mask) != chip_info->pattern))
  return -EIO;

 if (chip_info->is_ad778x) {
  st->gain = ad778x_gain[raw_sample & AD7780_GAIN];
  st->odr = ad778x_odr_avail[raw_sample & AD7780_FILTER];
 }

 return 0;
}
