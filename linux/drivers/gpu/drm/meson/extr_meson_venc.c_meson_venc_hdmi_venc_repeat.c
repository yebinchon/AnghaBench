
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool meson_venc_hdmi_venc_repeat(int vic)
{

 if (vic == 6 || vic == 7 ||
     vic == 21 || vic == 22 ||
     vic == 17 || vic == 18 ||
     vic == 2 || vic == 3 ||
     vic == 4 ||
     vic == 19 ||
     vic == 5 ||
     vic == 20)
  return 1;

 return 0;
}
