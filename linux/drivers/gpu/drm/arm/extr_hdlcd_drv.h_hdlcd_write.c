
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdlcd_drm_private {scalar_t__ mmio; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void hdlcd_write(struct hdlcd_drm_private *hdlcd,
          unsigned int reg, u32 value)
{
 writel(value, hdlcd->mmio + reg);
}
