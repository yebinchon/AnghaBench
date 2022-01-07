
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct rk3066_hdmi {scalar_t__ regs; } ;


 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void hdmi_writeb(struct rk3066_hdmi *hdmi, u16 offset, u32 val)
{
 writel_relaxed(val, hdmi->regs + offset);
}
