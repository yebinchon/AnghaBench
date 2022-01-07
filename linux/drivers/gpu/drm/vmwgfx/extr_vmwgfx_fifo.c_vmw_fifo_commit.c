
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_private {scalar_t__ cman; } ;


 int vmw_cmdbuf_commit (scalar_t__,int ,int *,int) ;
 int vmw_local_fifo_commit (struct vmw_private*,int ) ;

void vmw_fifo_commit(struct vmw_private *dev_priv, uint32_t bytes)
{
 if (dev_priv->cman)
  vmw_cmdbuf_commit(dev_priv->cman, bytes, ((void*)0), 0);
 else
  vmw_local_fifo_commit(dev_priv, bytes);
}
