
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dp_funcs; int * hdmi_funcs; int * funcs; } ;
struct radeon_device {TYPE_1__ audio; } ;


 scalar_t__ ASIC_IS_DCE32 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE6 (struct radeon_device*) ;
 int dce32_dp_funcs ;
 int dce32_funcs ;
 int dce32_hdmi_funcs ;
 int dce4_dp_funcs ;
 int dce4_funcs ;
 int dce4_hdmi_funcs ;
 int dce6_dp_funcs ;
 int dce6_funcs ;
 int dce6_hdmi_funcs ;
 int r600_funcs ;
 int r600_hdmi_funcs ;

__attribute__((used)) static void radeon_audio_interface_init(struct radeon_device *rdev)
{
 if (ASIC_IS_DCE6(rdev)) {
  rdev->audio.funcs = &dce6_funcs;
  rdev->audio.hdmi_funcs = &dce6_hdmi_funcs;
  rdev->audio.dp_funcs = &dce6_dp_funcs;
 } else if (ASIC_IS_DCE4(rdev)) {
  rdev->audio.funcs = &dce4_funcs;
  rdev->audio.hdmi_funcs = &dce4_hdmi_funcs;
  rdev->audio.dp_funcs = &dce4_dp_funcs;
 } else if (ASIC_IS_DCE32(rdev)) {
  rdev->audio.funcs = &dce32_funcs;
  rdev->audio.hdmi_funcs = &dce32_hdmi_funcs;
  rdev->audio.dp_funcs = &dce32_dp_funcs;
 } else {
  rdev->audio.funcs = &r600_funcs;
  rdev->audio.hdmi_funcs = &r600_hdmi_funcs;
  rdev->audio.dp_funcs = 0;
 }
}
