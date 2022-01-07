
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_private {scalar_t__ has_mob; } ;


 int vmw_fifo_emit_dummy_gb_query (struct vmw_private*,int ) ;
 int vmw_fifo_emit_dummy_legacy_query (struct vmw_private*,int ) ;

int vmw_fifo_emit_dummy_query(struct vmw_private *dev_priv,
         uint32_t cid)
{
 if (dev_priv->has_mob)
  return vmw_fifo_emit_dummy_gb_query(dev_priv, cid);

 return vmw_fifo_emit_dummy_legacy_query(dev_priv, cid);
}
