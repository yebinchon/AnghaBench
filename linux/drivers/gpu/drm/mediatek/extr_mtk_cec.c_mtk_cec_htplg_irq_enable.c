
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_cec {int dummy; } ;


 int HDMI_HTPLG_INT_EN ;
 int HDMI_PORD_INT_EN ;
 int RX_EVENT ;
 int mtk_cec_set_bits (struct mtk_cec*,int ,int) ;

__attribute__((used)) static void mtk_cec_htplg_irq_enable(struct mtk_cec *cec)
{
 mtk_cec_set_bits(cec, RX_EVENT, HDMI_PORD_INT_EN | HDMI_HTPLG_INT_EN);
}
