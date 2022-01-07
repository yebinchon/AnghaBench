
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_dw_hdmi {scalar_t__ hdmitx; } ;


 scalar_t__ HDMITX_DWC_ADDR_REG ;
 scalar_t__ HDMITX_DWC_DATA_REG ;
 int reg_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void dw_hdmi_dwc_write(struct meson_dw_hdmi *dw_hdmi,
         unsigned int addr, unsigned int data)
{
 unsigned long flags;

 spin_lock_irqsave(&reg_lock, flags);


 writel(addr & 0xffff, dw_hdmi->hdmitx + HDMITX_DWC_ADDR_REG);
 writel(addr & 0xffff, dw_hdmi->hdmitx + HDMITX_DWC_ADDR_REG);


 writel(data, dw_hdmi->hdmitx + HDMITX_DWC_DATA_REG);

 spin_unlock_irqrestore(&reg_lock, flags);
}
