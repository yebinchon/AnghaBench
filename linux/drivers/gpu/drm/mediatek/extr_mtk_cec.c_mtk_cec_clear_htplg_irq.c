
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_cec {int dummy; } ;


 int CLEAR_CEC_IRQ ;
 int HDMI_FULL_INT_CLR ;
 int HDMI_HTPLG_INT_32K_CLR ;
 int HDMI_HTPLG_INT_CLR ;
 int HDMI_PORD_INT_32K_CLR ;
 int HDMI_PORD_INT_CLR ;
 int NORMAL_INT_CTRL ;
 int RX_GEN_WD ;
 int RX_INT_32K_CLR ;
 int TR_CONFIG ;
 int mtk_cec_clear_bits (struct mtk_cec*,int ,int) ;
 int mtk_cec_set_bits (struct mtk_cec*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mtk_cec_clear_htplg_irq(struct mtk_cec *cec)
{
 mtk_cec_set_bits(cec, TR_CONFIG, CLEAR_CEC_IRQ);
 mtk_cec_set_bits(cec, NORMAL_INT_CTRL, HDMI_HTPLG_INT_CLR |
    HDMI_PORD_INT_CLR | HDMI_FULL_INT_CLR);
 mtk_cec_set_bits(cec, RX_GEN_WD, HDMI_PORD_INT_32K_CLR |
    RX_INT_32K_CLR | HDMI_HTPLG_INT_32K_CLR);
 usleep_range(5, 10);
 mtk_cec_clear_bits(cec, NORMAL_INT_CTRL, HDMI_HTPLG_INT_CLR |
      HDMI_PORD_INT_CLR | HDMI_FULL_INT_CLR);
 mtk_cec_clear_bits(cec, TR_CONFIG, CLEAR_CEC_IRQ);
 mtk_cec_clear_bits(cec, RX_GEN_WD, HDMI_PORD_INT_32K_CLR |
      RX_INT_32K_CLR | HDMI_HTPLG_INT_32K_CLR);
}
