
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipu_ic_priv {int lock; } ;
struct ipu_ic_csc {int out_cs; int in_cs; } ;
struct ipu_ic {int out_cs; int in_cs; TYPE_1__* reg; struct ipu_ic_priv* priv; } ;
struct TYPE_2__ {int rsc; } ;


 int calc_resize_coeffs (struct ipu_ic*,int,int,int*,int*) ;
 int init_csc (struct ipu_ic*,struct ipu_ic_csc const*,int ) ;
 int ipu_ic_write (struct ipu_ic*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ipu_ic_task_init_rsc(struct ipu_ic *ic,
    const struct ipu_ic_csc *csc,
    int in_width, int in_height,
    int out_width, int out_height,
    u32 rsc)
{
 struct ipu_ic_priv *priv = ic->priv;
 u32 downsize_coeff, resize_coeff;
 unsigned long flags;
 int ret = 0;

 if (!rsc) {


  ret = calc_resize_coeffs(ic, in_height, out_height,
      &resize_coeff, &downsize_coeff);
  if (ret)
   return ret;

  rsc = (downsize_coeff << 30) | (resize_coeff << 16);


  ret = calc_resize_coeffs(ic, in_width, out_width,
      &resize_coeff, &downsize_coeff);
  if (ret)
   return ret;

  rsc |= (downsize_coeff << 14) | resize_coeff;
 }

 spin_lock_irqsave(&priv->lock, flags);

 ipu_ic_write(ic, rsc, ic->reg->rsc);


 ic->in_cs = csc->in_cs;
 ic->out_cs = csc->out_cs;

 ret = init_csc(ic, csc, 0);

 spin_unlock_irqrestore(&priv->lock, flags);
 return ret;
}
