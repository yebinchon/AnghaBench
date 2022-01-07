
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipu_ic_priv {int lock; } ;
struct ipu_ic_colorspace {int dummy; } ;
struct ipu_ic_csc {int out_cs; struct ipu_ic_colorspace in_cs; } ;
struct ipu_ic {scalar_t__ task; int graphics; TYPE_1__* bit; int out_cs; struct ipu_ic_colorspace g_in_cs; struct ipu_ic_priv* priv; } ;
struct TYPE_2__ {int ic_conf_csc1_en; int ic_cmb_galpha_bit; } ;


 int EINVAL ;
 int IC_CMBP_1 ;
 int IC_CMBP_2 ;
 int IC_CONF ;
 int IC_CONF_IC_GLB_LOC_A ;
 int IC_CONF_KEY_COLOR_EN ;
 scalar_t__ IC_TASK_ENCODER ;
 int IPUV3_COLORSPACE_RGB ;
 int V4L2_QUANTIZATION_FULL_RANGE ;
 int V4L2_YCBCR_ENC_601 ;
 int __ipu_ic_calc_csc (struct ipu_ic_csc*) ;
 int init_csc (struct ipu_ic*,struct ipu_ic_csc*,int) ;
 int ipu_ic_calc_csc (struct ipu_ic_csc*,int ,int ,int ,int ,int ,int ) ;
 int ipu_ic_read (struct ipu_ic*,int ) ;
 int ipu_ic_write (struct ipu_ic*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ipu_ic_task_graphics_init(struct ipu_ic *ic,
         const struct ipu_ic_colorspace *g_in_cs,
         bool galpha_en, u32 galpha,
         bool colorkey_en, u32 colorkey)
{
 struct ipu_ic_priv *priv = ic->priv;
 struct ipu_ic_csc csc2;
 unsigned long flags;
 u32 reg, ic_conf;
 int ret = 0;

 if (ic->task == IC_TASK_ENCODER)
  return -EINVAL;

 spin_lock_irqsave(&priv->lock, flags);

 ic_conf = ipu_ic_read(ic, IC_CONF);

 if (!(ic_conf & ic->bit->ic_conf_csc1_en)) {
  struct ipu_ic_csc csc1;

  ret = ipu_ic_calc_csc(&csc1,
          V4L2_YCBCR_ENC_601,
          V4L2_QUANTIZATION_FULL_RANGE,
          IPUV3_COLORSPACE_RGB,
          V4L2_YCBCR_ENC_601,
          V4L2_QUANTIZATION_FULL_RANGE,
          IPUV3_COLORSPACE_RGB);
  if (ret)
   goto unlock;


  ret = init_csc(ic, &csc1, 0);
  if (ret)
   goto unlock;
 }

 ic->g_in_cs = *g_in_cs;
 csc2.in_cs = ic->g_in_cs;
 csc2.out_cs = ic->out_cs;

 ret = __ipu_ic_calc_csc(&csc2);
 if (ret)
  goto unlock;

 ret = init_csc(ic, &csc2, 1);
 if (ret)
  goto unlock;

 if (galpha_en) {
  ic_conf |= IC_CONF_IC_GLB_LOC_A;
  reg = ipu_ic_read(ic, IC_CMBP_1);
  reg &= ~(0xff << ic->bit->ic_cmb_galpha_bit);
  reg |= (galpha << ic->bit->ic_cmb_galpha_bit);
  ipu_ic_write(ic, reg, IC_CMBP_1);
 } else
  ic_conf &= ~IC_CONF_IC_GLB_LOC_A;

 if (colorkey_en) {
  ic_conf |= IC_CONF_KEY_COLOR_EN;
  ipu_ic_write(ic, colorkey, IC_CMBP_2);
 } else
  ic_conf &= ~IC_CONF_KEY_COLOR_EN;

 ipu_ic_write(ic, ic_conf, IC_CONF);

 ic->graphics = 1;
unlock:
 spin_unlock_irqrestore(&priv->lock, flags);
 return ret;
}
