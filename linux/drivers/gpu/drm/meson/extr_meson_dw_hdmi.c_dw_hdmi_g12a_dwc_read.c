
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_dw_hdmi {scalar_t__ hdmitx; } ;


 unsigned int readb (scalar_t__) ;

__attribute__((used)) static unsigned int dw_hdmi_g12a_dwc_read(struct meson_dw_hdmi *dw_hdmi,
       unsigned int addr)
{
 return readb(dw_hdmi->hdmitx + addr);
}
