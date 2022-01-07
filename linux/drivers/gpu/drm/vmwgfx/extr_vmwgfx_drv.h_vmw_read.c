
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct vmw_private {int hw_lock; scalar_t__ io_start; } ;


 scalar_t__ VMWGFX_INDEX_PORT ;
 scalar_t__ VMWGFX_VALUE_PORT ;
 int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline uint32_t vmw_read(struct vmw_private *dev_priv,
    unsigned int offset)
{
 u32 val;

 spin_lock(&dev_priv->hw_lock);
 outl(offset, dev_priv->io_start + VMWGFX_INDEX_PORT);
 val = inl(dev_priv->io_start + VMWGFX_VALUE_PORT);
 spin_unlock(&dev_priv->hw_lock);

 return val;
}
