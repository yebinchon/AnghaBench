
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_dw_hdmi {scalar_t__ hdmitx; } ;


 scalar_t__ HDMITX_TOP_ADDR_REG ;
 scalar_t__ HDMITX_TOP_DATA_REG ;
 unsigned int readl (scalar_t__) ;
 int reg_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static unsigned int dw_hdmi_top_read(struct meson_dw_hdmi *dw_hdmi,
         unsigned int addr)
{
 unsigned long flags;
 unsigned int data;

 spin_lock_irqsave(&reg_lock, flags);


 writel(addr & 0xffff, dw_hdmi->hdmitx + HDMITX_TOP_ADDR_REG);
 writel(addr & 0xffff, dw_hdmi->hdmitx + HDMITX_TOP_ADDR_REG);


 data = readl(dw_hdmi->hdmitx + HDMITX_TOP_DATA_REG);
 data = readl(dw_hdmi->hdmitx + HDMITX_TOP_DATA_REG);

 spin_unlock_irqrestore(&reg_lock, flags);

 return data;
}
