
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct zx_hdmi {int dummy; } ;


 int hdmi_readb (struct zx_hdmi*,int ) ;
 int hdmi_writeb (struct zx_hdmi*,int ,int) ;

__attribute__((used)) static inline void hdmi_writeb_mask(struct zx_hdmi *hdmi, u16 offset,
        u8 mask, u8 val)
{
 u8 tmp;

 tmp = hdmi_readb(hdmi, offset);
 tmp = (tmp & ~mask) | (val & mask);
 hdmi_writeb(hdmi, offset, tmp);
}
