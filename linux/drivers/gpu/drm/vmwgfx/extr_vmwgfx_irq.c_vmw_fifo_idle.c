
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_private {int dummy; } ;


 int SVGA_REG_BUSY ;
 scalar_t__ vmw_read (struct vmw_private*,int ) ;

__attribute__((used)) static bool vmw_fifo_idle(struct vmw_private *dev_priv, uint32_t seqno)
{

 return (vmw_read(dev_priv, SVGA_REG_BUSY) == 0);
}
