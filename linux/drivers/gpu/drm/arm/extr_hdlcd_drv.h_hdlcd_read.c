
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdlcd_drm_private {scalar_t__ mmio; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 hdlcd_read(struct hdlcd_drm_private *hdlcd, unsigned int reg)
{
 return readl(hdlcd->mmio + reg);
}
