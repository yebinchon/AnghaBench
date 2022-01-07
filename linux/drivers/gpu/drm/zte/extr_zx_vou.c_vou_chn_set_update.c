
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_crtc {scalar_t__ chnreg; } ;


 scalar_t__ CHN_UPDATE ;
 int zx_writel (scalar_t__,int) ;

__attribute__((used)) static inline void vou_chn_set_update(struct zx_crtc *zcrtc)
{
 zx_writel(zcrtc->chnreg + CHN_UPDATE, 1);
}
