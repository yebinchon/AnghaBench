
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_dw_hdmi {TYPE_1__* data; } ;
struct dw_hdmi {int dummy; } ;
struct TYPE_2__ {int (* top_write ) (struct meson_dw_hdmi*,int ,int) ;} ;


 int HDMITX_TOP_HPD_FILTER ;
 int HDMITX_TOP_INTR_HPD_FALL ;
 int HDMITX_TOP_INTR_HPD_RISE ;
 int HDMITX_TOP_INTR_MASKN ;
 int HDMITX_TOP_INTR_STAT_CLR ;
 int dw_hdmi_top_write_bits (struct meson_dw_hdmi*,int ,int,int) ;
 int stub1 (struct meson_dw_hdmi*,int ,int) ;
 int stub2 (struct meson_dw_hdmi*,int ,int) ;

__attribute__((used)) static void dw_hdmi_setup_hpd(struct dw_hdmi *hdmi,
         void *data)
{
 struct meson_dw_hdmi *dw_hdmi = (struct meson_dw_hdmi *)data;


 dw_hdmi->data->top_write(dw_hdmi, HDMITX_TOP_HPD_FILTER,
     (0xa << 12) | 0xa0);


 dw_hdmi->data->top_write(dw_hdmi, HDMITX_TOP_INTR_STAT_CLR,
     HDMITX_TOP_INTR_HPD_RISE | HDMITX_TOP_INTR_HPD_FALL);


 dw_hdmi_top_write_bits(dw_hdmi, HDMITX_TOP_INTR_MASKN,
   HDMITX_TOP_INTR_HPD_RISE | HDMITX_TOP_INTR_HPD_FALL,
   HDMITX_TOP_INTR_HPD_RISE | HDMITX_TOP_INTR_HPD_FALL);
}
