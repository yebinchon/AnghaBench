
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hdmi_phy {scalar_t__ mmio; } ;


 scalar_t__ msm_readl (scalar_t__) ;

__attribute__((used)) static inline u32 hdmi_phy_read(struct hdmi_phy *phy, u32 reg)
{
 return msm_readl(phy->mmio + reg);
}
