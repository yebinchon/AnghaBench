
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scmi_xfers_info {int xfer_lock; int xfer_alloc_table; } ;
struct TYPE_2__ {int seq; } ;
struct scmi_xfer {TYPE_1__ hdr; } ;


 int clear_bit (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
__scmi_xfer_put(struct scmi_xfers_info *minfo, struct scmi_xfer *xfer)
{
 unsigned long flags;






 spin_lock_irqsave(&minfo->xfer_lock, flags);
 clear_bit(xfer->hdr.seq, minfo->xfer_alloc_table);
 spin_unlock_irqrestore(&minfo->xfer_lock, flags);
}
