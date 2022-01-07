
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hdmi_phy {scalar_t__ mmio; } ;


 int msm_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void hdmi_phy_write(struct hdmi_phy *phy, u32 reg, u32 data)
{
 msm_writel(data, phy->mmio + reg);
}
