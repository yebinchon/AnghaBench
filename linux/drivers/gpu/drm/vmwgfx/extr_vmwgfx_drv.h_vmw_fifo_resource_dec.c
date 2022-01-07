
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int num_fifo_resources; } ;


 int atomic_dec (int *) ;

__attribute__((used)) static inline void vmw_fifo_resource_dec(struct vmw_private *dev_priv)
{
 atomic_dec(&dev_priv->num_fifo_resources);
}
