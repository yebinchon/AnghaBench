
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_display_mode {int dummy; } ;
struct TYPE_3__ {int mode; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ drm_mode_equal (int *,struct drm_display_mode*) ;
 TYPE_1__* hda_supported_modes ;

__attribute__((used)) static bool hda_get_mode_idx(struct drm_display_mode mode, int *idx)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(hda_supported_modes); i++)
  if (drm_mode_equal(&hda_supported_modes[i].mode, &mode)) {
   *idx = i;
   return 1;
  }
 return 0;
}
