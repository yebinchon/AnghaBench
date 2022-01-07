
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_dw_hdmi {scalar_t__ hdmitx; } ;


 scalar_t__ HDMITX_TOP_G12A_OFFSET ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void dw_hdmi_g12a_top_write(struct meson_dw_hdmi *dw_hdmi,
       unsigned int addr, unsigned int data)
{
 writel(data, dw_hdmi->hdmitx + HDMITX_TOP_G12A_OFFSET + (addr << 2));
}
