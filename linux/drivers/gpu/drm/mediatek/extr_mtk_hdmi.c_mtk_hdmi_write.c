
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mtk_hdmi {scalar_t__ regs; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void mtk_hdmi_write(struct mtk_hdmi *hdmi, u32 offset, u32 val)
{
 writel(val, hdmi->regs + offset);
}
