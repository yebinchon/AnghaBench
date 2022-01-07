
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipuv3_channel {int num; } ;
struct ipu_soc {int dev; } ;
struct ipu_ic_priv {int lock; struct ipu_soc* ipu; } ;
struct ipu_ic {int rotation; struct ipu_ic_priv* priv; } ;
typedef enum ipu_rotate_mode { ____Placeholder_ipu_rotate_mode } ipu_rotate_mode ;


 int EINVAL ;
 int IC_IDMAC_1 ;
 int IC_IDMAC_1_CB0_BURST_16 ;
 int IC_IDMAC_1_CB1_BURST_16 ;
 int IC_IDMAC_1_CB2_BURST_16 ;
 int IC_IDMAC_1_CB3_BURST_16 ;
 int IC_IDMAC_1_CB4_BURST_16 ;
 int IC_IDMAC_1_CB5_BURST_16 ;
 int IC_IDMAC_1_CB6_BURST_16 ;
 int IC_IDMAC_1_CB7_BURST_16 ;
 int IC_IDMAC_1_PP_FLIP_RS ;
 int IC_IDMAC_1_PP_ROT_MASK ;
 int IC_IDMAC_1_PP_ROT_OFFSET ;
 int IC_IDMAC_1_PRPENC_FLIP_RS ;
 int IC_IDMAC_1_PRPENC_ROT_MASK ;
 int IC_IDMAC_1_PRPENC_ROT_OFFSET ;
 int IC_IDMAC_1_PRPVF_FLIP_RS ;
 int IC_IDMAC_1_PRPVF_ROT_MASK ;
 int IC_IDMAC_1_PRPVF_ROT_OFFSET ;
 int IC_IDMAC_2 ;
 int IC_IDMAC_2_PP_HEIGHT_MASK ;
 int IC_IDMAC_2_PP_HEIGHT_OFFSET ;
 int IC_IDMAC_2_PRPENC_HEIGHT_MASK ;
 int IC_IDMAC_2_PRPENC_HEIGHT_OFFSET ;
 int IC_IDMAC_2_PRPVF_HEIGHT_MASK ;
 int IC_IDMAC_2_PRPVF_HEIGHT_OFFSET ;
 int IC_IDMAC_3 ;
 int IC_IDMAC_3_PP_WIDTH_MASK ;
 int IC_IDMAC_3_PP_WIDTH_OFFSET ;
 int IC_IDMAC_3_PRPENC_WIDTH_MASK ;
 int IC_IDMAC_3_PRPENC_WIDTH_OFFSET ;
 int IC_IDMAC_3_PRPVF_WIDTH_MASK ;
 int IC_IDMAC_3_PRPVF_WIDTH_OFFSET ;
 int bitrev8 (int) ;
 int dev_err (int ,char*) ;
 int ipu_ic_read (struct ipu_ic*,int ) ;
 int ipu_ic_write (struct ipu_ic*,int,int ) ;
 scalar_t__ ipu_rot_mode_is_irt (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ipu_ic_task_idma_init(struct ipu_ic *ic, struct ipuv3_channel *channel,
     u32 width, u32 height, int burst_size,
     enum ipu_rotate_mode rot)
{
 struct ipu_ic_priv *priv = ic->priv;
 struct ipu_soc *ipu = priv->ipu;
 u32 ic_idmac_1, ic_idmac_2, ic_idmac_3;
 u32 temp_rot = bitrev8(rot) >> 5;
 bool need_hor_flip = 0;
 unsigned long flags;
 int ret = 0;

 if ((burst_size != 8) && (burst_size != 16)) {
  dev_err(ipu->dev, "Illegal burst length for IC\n");
  return -EINVAL;
 }

 width--;
 height--;

 if (temp_rot & 0x2)
  need_hor_flip = 1;

 spin_lock_irqsave(&priv->lock, flags);

 ic_idmac_1 = ipu_ic_read(ic, IC_IDMAC_1);
 ic_idmac_2 = ipu_ic_read(ic, IC_IDMAC_2);
 ic_idmac_3 = ipu_ic_read(ic, IC_IDMAC_3);

 switch (channel->num) {
 case 136:
  if (burst_size == 16)
   ic_idmac_1 |= IC_IDMAC_1_CB2_BURST_16;
  else
   ic_idmac_1 &= ~IC_IDMAC_1_CB2_BURST_16;

  if (need_hor_flip)
   ic_idmac_1 |= IC_IDMAC_1_PP_FLIP_RS;
  else
   ic_idmac_1 &= ~IC_IDMAC_1_PP_FLIP_RS;

  ic_idmac_2 &= ~IC_IDMAC_2_PP_HEIGHT_MASK;
  ic_idmac_2 |= height << IC_IDMAC_2_PP_HEIGHT_OFFSET;

  ic_idmac_3 &= ~IC_IDMAC_3_PP_WIDTH_MASK;
  ic_idmac_3 |= width << IC_IDMAC_3_PP_WIDTH_OFFSET;
  break;
 case 133:
  if (burst_size == 16)
   ic_idmac_1 |= IC_IDMAC_1_CB5_BURST_16;
  else
   ic_idmac_1 &= ~IC_IDMAC_1_CB5_BURST_16;
  break;
 case 130:
  ic_idmac_1 &= ~IC_IDMAC_1_PP_ROT_MASK;
  ic_idmac_1 |= temp_rot << IC_IDMAC_1_PP_ROT_OFFSET;
  break;
 case 132:
  if (burst_size == 16)
   ic_idmac_1 |= IC_IDMAC_1_CB6_BURST_16;
  else
   ic_idmac_1 &= ~IC_IDMAC_1_CB6_BURST_16;
  break;
 case 135:
  if (burst_size == 16)
   ic_idmac_1 |= IC_IDMAC_1_CB0_BURST_16;
  else
   ic_idmac_1 &= ~IC_IDMAC_1_CB0_BURST_16;

  if (need_hor_flip)
   ic_idmac_1 |= IC_IDMAC_1_PRPENC_FLIP_RS;
  else
   ic_idmac_1 &= ~IC_IDMAC_1_PRPENC_FLIP_RS;

  ic_idmac_2 &= ~IC_IDMAC_2_PRPENC_HEIGHT_MASK;
  ic_idmac_2 |= height << IC_IDMAC_2_PRPENC_HEIGHT_OFFSET;

  ic_idmac_3 &= ~IC_IDMAC_3_PRPENC_WIDTH_MASK;
  ic_idmac_3 |= width << IC_IDMAC_3_PRPENC_WIDTH_OFFSET;
  break;
 case 131:
  ic_idmac_1 &= ~IC_IDMAC_1_PRPENC_ROT_MASK;
  ic_idmac_1 |= temp_rot << IC_IDMAC_1_PRPENC_ROT_OFFSET;
  break;
 case 134:
  if (burst_size == 16)
   ic_idmac_1 |= IC_IDMAC_1_CB1_BURST_16;
  else
   ic_idmac_1 &= ~IC_IDMAC_1_CB1_BURST_16;

  if (need_hor_flip)
   ic_idmac_1 |= IC_IDMAC_1_PRPVF_FLIP_RS;
  else
   ic_idmac_1 &= ~IC_IDMAC_1_PRPVF_FLIP_RS;

  ic_idmac_2 &= ~IC_IDMAC_2_PRPVF_HEIGHT_MASK;
  ic_idmac_2 |= height << IC_IDMAC_2_PRPVF_HEIGHT_OFFSET;

  ic_idmac_3 &= ~IC_IDMAC_3_PRPVF_WIDTH_MASK;
  ic_idmac_3 |= width << IC_IDMAC_3_PRPVF_WIDTH_OFFSET;
  break;
 case 129:
  ic_idmac_1 &= ~IC_IDMAC_1_PRPVF_ROT_MASK;
  ic_idmac_1 |= temp_rot << IC_IDMAC_1_PRPVF_ROT_OFFSET;
  break;
 case 137:
  if (burst_size == 16)
   ic_idmac_1 |= IC_IDMAC_1_CB3_BURST_16;
  else
   ic_idmac_1 &= ~IC_IDMAC_1_CB3_BURST_16;
  break;
 case 138:
  if (burst_size == 16)
   ic_idmac_1 |= IC_IDMAC_1_CB4_BURST_16;
  else
   ic_idmac_1 &= ~IC_IDMAC_1_CB4_BURST_16;
  break;
 case 128:
  if (burst_size == 16)
   ic_idmac_1 |= IC_IDMAC_1_CB7_BURST_16;
  else
   ic_idmac_1 &= ~IC_IDMAC_1_CB7_BURST_16;
  break;
 default:
  goto unlock;
 }

 ipu_ic_write(ic, ic_idmac_1, IC_IDMAC_1);
 ipu_ic_write(ic, ic_idmac_2, IC_IDMAC_2);
 ipu_ic_write(ic, ic_idmac_3, IC_IDMAC_3);

 if (ipu_rot_mode_is_irt(rot))
  ic->rotation = 1;

unlock:
 spin_unlock_irqrestore(&priv->lock, flags);
 return ret;
}
