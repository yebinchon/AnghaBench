
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_hdmi_ddc {scalar_t__ regs; } ;


 int DDCM_SIF_MODE_MASK ;
 int DDCM_SIF_MODE_OFFSET ;
 int DDCM_TRI ;
 scalar_t__ DDC_DDCMCTL1 ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;
 int sif_set_bit (struct mtk_hdmi_ddc*,scalar_t__,int) ;
 int sif_write_mask (struct mtk_hdmi_ddc*,scalar_t__,int ,int ,int) ;

__attribute__((used)) static void ddcm_trigger_mode(struct mtk_hdmi_ddc *ddc, int mode)
{
 u32 val;

 sif_write_mask(ddc, DDC_DDCMCTL1, DDCM_SIF_MODE_MASK,
         DDCM_SIF_MODE_OFFSET, mode);
 sif_set_bit(ddc, DDC_DDCMCTL1, DDCM_TRI);
 readl_poll_timeout(ddc->regs + DDC_DDCMCTL1, val,
      (val & DDCM_TRI) != DDCM_TRI, 4, 20000);
}
