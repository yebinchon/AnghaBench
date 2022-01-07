
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipu_ic_priv {int lock; } ;
struct ipu_ic {TYPE_1__* bit; struct ipu_ic_priv* priv; } ;
struct TYPE_2__ {int ic_conf_en; int ic_conf_csc1_en; int ic_conf_rot_en; int ic_conf_csc2_en; int ic_conf_cmb_en; } ;


 int IC_CONF ;
 int ipu_ic_read (struct ipu_ic*,int ) ;
 int ipu_ic_write (struct ipu_ic*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ipu_ic_task_disable(struct ipu_ic *ic)
{
 struct ipu_ic_priv *priv = ic->priv;
 unsigned long flags;
 u32 ic_conf;

 spin_lock_irqsave(&priv->lock, flags);

 ic_conf = ipu_ic_read(ic, IC_CONF);

 ic_conf &= ~(ic->bit->ic_conf_en |
       ic->bit->ic_conf_csc1_en |
       ic->bit->ic_conf_rot_en);
 if (ic->bit->ic_conf_csc2_en)
  ic_conf &= ~ic->bit->ic_conf_csc2_en;
 if (ic->bit->ic_conf_cmb_en)
  ic_conf &= ~ic->bit->ic_conf_cmb_en;

 ipu_ic_write(ic, ic_conf, IC_CONF);

 spin_unlock_irqrestore(&priv->lock, flags);
}
