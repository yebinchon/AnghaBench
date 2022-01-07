
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rk3066_hdmi {int dummy; } ;


 int HDMI_SYS_CTRL ;
 int HDMI_SYS_POWER_MODE_MASK ;
 int hdmi_readb (struct rk3066_hdmi*,int ) ;

__attribute__((used)) static inline u8 rk3066_hdmi_get_power_mode(struct rk3066_hdmi *hdmi)
{
 return hdmi_readb(hdmi, HDMI_SYS_CTRL) & HDMI_SYS_POWER_MODE_MASK;
}
