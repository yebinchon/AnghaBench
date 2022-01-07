
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union meson_hdmi_venc_mode {int dummy; } meson_hdmi_venc_mode ;
struct meson_hdmi_venc_vic_mode {int vic; union meson_hdmi_venc_mode* mode; } ;


 struct meson_hdmi_venc_vic_mode* meson_hdmi_venc_vic_modes ;

__attribute__((used)) static union meson_hdmi_venc_mode *meson_venc_hdmi_get_vic_vmode(int vic)
{
 struct meson_hdmi_venc_vic_mode *vmode = meson_hdmi_venc_vic_modes;

 while (vmode->vic && vmode->mode) {
  if (vmode->vic == vic)
   return vmode->mode;
  vmode++;
 }

 return ((void*)0);
}
