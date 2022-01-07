
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ti_sci_xfers_info {int sem_xfer_count; int xfer_lock; int xfer_alloc_table; } ;
struct TYPE_2__ {scalar_t__ buf; } ;
struct ti_sci_xfer {TYPE_1__ tx_message; } ;
struct ti_sci_msg_hdr {int seq; } ;


 int clear_bit (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int up (int *) ;

__attribute__((used)) static void ti_sci_put_one_xfer(struct ti_sci_xfers_info *minfo,
    struct ti_sci_xfer *xfer)
{
 unsigned long flags;
 struct ti_sci_msg_hdr *hdr;
 u8 xfer_id;

 hdr = (struct ti_sci_msg_hdr *)xfer->tx_message.buf;
 xfer_id = hdr->seq;






 spin_lock_irqsave(&minfo->xfer_lock, flags);
 clear_bit(xfer_id, minfo->xfer_alloc_table);
 spin_unlock_irqrestore(&minfo->xfer_lock, flags);


 up(&minfo->sem_xfer_count);
}
