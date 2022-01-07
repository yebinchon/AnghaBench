
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dw_hdmi {int dummy; } ;


 int hdmi_modb (struct dw_hdmi*,int,int,unsigned int) ;

__attribute__((used)) static void hdmi_mask_writeb(struct dw_hdmi *hdmi, u8 data, unsigned int reg,
        u8 shift, u8 mask)
{
 hdmi_modb(hdmi, data << shift, mask, reg);
}
