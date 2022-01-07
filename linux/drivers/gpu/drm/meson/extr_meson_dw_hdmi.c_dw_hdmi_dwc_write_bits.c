
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_dw_hdmi {TYPE_1__* data; } ;
struct TYPE_2__ {unsigned int (* dwc_read ) (struct meson_dw_hdmi*,unsigned int) ;int (* dwc_write ) (struct meson_dw_hdmi*,unsigned int,unsigned int) ;} ;


 unsigned int stub1 (struct meson_dw_hdmi*,unsigned int) ;
 int stub2 (struct meson_dw_hdmi*,unsigned int,unsigned int) ;

__attribute__((used)) static inline void dw_hdmi_dwc_write_bits(struct meson_dw_hdmi *dw_hdmi,
       unsigned int addr,
       unsigned int mask,
       unsigned int val)
{
 unsigned int data = dw_hdmi->data->dwc_read(dw_hdmi, addr);

 data &= ~mask;
 data |= val;

 dw_hdmi->data->dwc_write(dw_hdmi, addr, data);
}
