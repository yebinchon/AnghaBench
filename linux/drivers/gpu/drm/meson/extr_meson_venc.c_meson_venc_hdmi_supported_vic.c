
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_hdmi_venc_vic_mode {int vic; scalar_t__ mode; } ;


 struct meson_hdmi_venc_vic_mode* meson_hdmi_venc_vic_modes ;

bool meson_venc_hdmi_supported_vic(int vic)
{
 struct meson_hdmi_venc_vic_mode *vmode = meson_hdmi_venc_vic_modes;

 while (vmode->vic && vmode->mode) {
  if (vmode->vic == vic)
   return 1;
  vmode++;
 }

 return 0;
}
