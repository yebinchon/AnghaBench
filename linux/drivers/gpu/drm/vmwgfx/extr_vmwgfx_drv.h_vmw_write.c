
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct vmw_private {int hw_lock; scalar_t__ io_start; } ;


 scalar_t__ VMWGFX_INDEX_PORT ;
 scalar_t__ VMWGFX_VALUE_PORT ;
 int outl (unsigned int,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void vmw_write(struct vmw_private *dev_priv,
        unsigned int offset, uint32_t value)
{
 spin_lock(&dev_priv->hw_lock);
 outl(offset, dev_priv->io_start + VMWGFX_INDEX_PORT);
 outl(value, dev_priv->io_start + VMWGFX_VALUE_PORT);
 spin_unlock(&dev_priv->hw_lock);
}
