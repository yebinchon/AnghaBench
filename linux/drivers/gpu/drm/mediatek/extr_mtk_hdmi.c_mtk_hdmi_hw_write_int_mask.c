
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_hdmi {int dummy; } ;


 int GRL_INT_MASK ;
 int mtk_hdmi_write (struct mtk_hdmi*,int ,int ) ;

__attribute__((used)) static void mtk_hdmi_hw_write_int_mask(struct mtk_hdmi *hdmi, u32 int_mask)
{
 mtk_hdmi_write(hdmi, GRL_INT_MASK, int_mask);
}
