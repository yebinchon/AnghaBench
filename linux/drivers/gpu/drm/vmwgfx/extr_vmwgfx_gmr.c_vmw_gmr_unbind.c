
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int capabilities; } ;


 int SVGA_CAP_GMR2 ;
 scalar_t__ likely (int) ;
 int vmw_gmr2_unbind (struct vmw_private*,int) ;

void vmw_gmr_unbind(struct vmw_private *dev_priv, int gmr_id)
{
 if (likely(dev_priv->capabilities & SVGA_CAP_GMR2))
  vmw_gmr2_unbind(dev_priv, gmr_id);
}
