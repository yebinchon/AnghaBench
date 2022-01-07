
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct radeon_encoder_int_tmds {TYPE_1__* tmds_pll; } ;
struct TYPE_5__ {struct drm_device* dev; } ;
struct radeon_encoder {TYPE_2__ base; } ;
struct radeon_device {size_t family; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_6__ {int freq; int value; } ;
struct TYPE_4__ {int freq; int value; } ;


 TYPE_3__** default_tmds_pll ;

bool radeon_legacy_get_tmds_info_from_table(struct radeon_encoder *encoder,
         struct radeon_encoder_int_tmds *tmds)
{
 struct drm_device *dev = encoder->base.dev;
 struct radeon_device *rdev = dev->dev_private;
 int i;

 for (i = 0; i < 4; i++) {
  tmds->tmds_pll[i].value =
   default_tmds_pll[rdev->family][i].value;
  tmds->tmds_pll[i].freq = default_tmds_pll[rdev->family][i].freq;
 }

 return 1;
}
