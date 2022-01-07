
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct zx_hdmi {scalar_t__ mmio; } ;


 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void hdmi_writeb(struct zx_hdmi *hdmi, u16 offset, u8 val)
{
 writel_relaxed(val, hdmi->mmio + offset * 4);
}
