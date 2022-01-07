
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_hps2fpga_data {int remap_mask; int l3reg; int bridge_reset; } ;


 int ALT_L3_REMAP_MPUZERO_MSK ;
 int ALT_L3_REMAP_OFST ;
 int l3_remap_lock ;
 int l3_remap_shadow ;
 int regmap_write (int ,int ,int) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int _alt_hps2fpga_enable_set(struct altera_hps2fpga_data *priv,
        bool enable)
{
 unsigned long flags;
 int ret;


 if (enable)
  ret = reset_control_deassert(priv->bridge_reset);
 else
  ret = reset_control_assert(priv->bridge_reset);
 if (ret)
  return ret;


 if (priv->remap_mask) {
  spin_lock_irqsave(&l3_remap_lock, flags);
  l3_remap_shadow |= ALT_L3_REMAP_MPUZERO_MSK;

  if (enable)
   l3_remap_shadow |= priv->remap_mask;
  else
   l3_remap_shadow &= ~priv->remap_mask;

  ret = regmap_write(priv->l3reg, ALT_L3_REMAP_OFST,
       l3_remap_shadow);
  spin_unlock_irqrestore(&l3_remap_lock, flags);
 }

 return ret;
}
