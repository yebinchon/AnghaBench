
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct rk3066_hdmi {scalar_t__ regs; } ;


 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u8 hdmi_readb(struct rk3066_hdmi *hdmi, u16 offset)
{
 return readl_relaxed(hdmi->regs + offset);
}
