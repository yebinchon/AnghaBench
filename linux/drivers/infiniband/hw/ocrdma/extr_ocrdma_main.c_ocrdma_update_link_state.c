
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ocrdma_dev {int flags; } ;


 int OCRDMA_FLAGS_LINK_STATUS_INIT ;
 int ocrdma_dispatch_port_active (struct ocrdma_dev*) ;
 int ocrdma_dispatch_port_error (struct ocrdma_dev*) ;

void ocrdma_update_link_state(struct ocrdma_dev *dev, u8 lstate)
{
 if (!(dev->flags & OCRDMA_FLAGS_LINK_STATUS_INIT)) {
  dev->flags |= OCRDMA_FLAGS_LINK_STATUS_INIT;
  if (!lstate)
   return;
 }

 if (!lstate)
  ocrdma_dispatch_port_error(dev);
 else
  ocrdma_dispatch_port_active(dev);
}
