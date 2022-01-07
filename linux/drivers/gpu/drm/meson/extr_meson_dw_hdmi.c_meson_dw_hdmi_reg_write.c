
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_dw_hdmi {TYPE_1__* data; } ;
struct TYPE_2__ {int (* dwc_write ) (struct meson_dw_hdmi*,unsigned int,unsigned int) ;} ;


 int stub1 (struct meson_dw_hdmi*,unsigned int,unsigned int) ;

__attribute__((used)) static int meson_dw_hdmi_reg_write(void *context, unsigned int reg,
       unsigned int val)
{
 struct meson_dw_hdmi *dw_hdmi = context;

 dw_hdmi->data->dwc_write(dw_hdmi, reg, val);

 return 0;
}
