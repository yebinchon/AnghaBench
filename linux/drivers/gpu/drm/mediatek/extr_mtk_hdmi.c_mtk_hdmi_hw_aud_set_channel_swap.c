
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtk_hdmi {int dummy; } ;
typedef enum hdmi_aud_channel_swap_type { ____Placeholder_hdmi_aud_channel_swap_type } hdmi_aud_channel_swap_type ;


 int GRL_CH_SWAP ;





 int LFE_CC_SWAP ;
 int LR_STATUS_SWAP ;
 int LR_SWAP ;
 int LSRS_SWAP ;
 int RLS_RRS_SWAP ;
 int mtk_hdmi_mask (struct mtk_hdmi*,int ,int ,int) ;

__attribute__((used)) static void mtk_hdmi_hw_aud_set_channel_swap(struct mtk_hdmi *hdmi,
     enum hdmi_aud_channel_swap_type swap)
{
 u8 swap_bit;

 switch (swap) {
 case 131:
  swap_bit = LR_SWAP;
  break;
 case 132:
  swap_bit = LFE_CC_SWAP;
  break;
 case 129:
  swap_bit = LSRS_SWAP;
  break;
 case 128:
  swap_bit = RLS_RRS_SWAP;
  break;
 case 130:
  swap_bit = LR_STATUS_SWAP;
  break;
 default:
  swap_bit = LFE_CC_SWAP;
  break;
 }
 mtk_hdmi_mask(hdmi, GRL_CH_SWAP, swap_bit, 0xff);
}
