
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int dummy; } ;


 int VMW_MAX_NUM_STREAMS ;
 int vmw_overlay_available (struct vmw_private*) ;

int vmw_overlay_num_overlays(struct vmw_private *dev_priv)
{
 if (!vmw_overlay_available(dev_priv))
  return 0;

 return VMW_MAX_NUM_STREAMS;
}
