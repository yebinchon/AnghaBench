
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct ti_sci_xfers_info {struct ti_sci_xfer* xfer_block; int xfer_lock; int xfer_alloc_table; int sem_xfer_count; } ;
struct TYPE_4__ {size_t len; scalar_t__ buf; } ;
struct ti_sci_xfer {size_t rx_len; int done; TYPE_2__ tx_message; } ;
struct ti_sci_msg_hdr {size_t seq; int flags; int host; int type; } ;
struct ti_sci_info {int host_id; TYPE_1__* desc; struct ti_sci_xfers_info minfo; } ;
struct TYPE_3__ {size_t max_msg_size; int max_msgs; int max_rx_timeout_ms; } ;


 int ERANGE ;
 struct ti_sci_xfer* ERR_PTR (int) ;
 int down_timeout (int *,int) ;
 unsigned long find_first_zero_bit (int ,int ) ;
 int msecs_to_jiffies (int ) ;
 int reinit_completion (int *) ;
 int set_bit (unsigned long,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct ti_sci_xfer *ti_sci_get_one_xfer(struct ti_sci_info *info,
            u16 msg_type, u32 msg_flags,
            size_t tx_message_size,
            size_t rx_message_size)
{
 struct ti_sci_xfers_info *minfo = &info->minfo;
 struct ti_sci_xfer *xfer;
 struct ti_sci_msg_hdr *hdr;
 unsigned long flags;
 unsigned long bit_pos;
 u8 xfer_id;
 int ret;
 int timeout;


 if (rx_message_size > info->desc->max_msg_size ||
     tx_message_size > info->desc->max_msg_size ||
     rx_message_size < sizeof(*hdr) || tx_message_size < sizeof(*hdr))
  return ERR_PTR(-ERANGE);






 timeout = msecs_to_jiffies(info->desc->max_rx_timeout_ms) * 5;
 ret = down_timeout(&minfo->sem_xfer_count, timeout);
 if (ret < 0)
  return ERR_PTR(ret);


 spin_lock_irqsave(&minfo->xfer_lock, flags);
 bit_pos = find_first_zero_bit(minfo->xfer_alloc_table,
          info->desc->max_msgs);
 set_bit(bit_pos, minfo->xfer_alloc_table);
 spin_unlock_irqrestore(&minfo->xfer_lock, flags);
 xfer_id = (u8)bit_pos;

 xfer = &minfo->xfer_block[xfer_id];

 hdr = (struct ti_sci_msg_hdr *)xfer->tx_message.buf;
 xfer->tx_message.len = tx_message_size;
 xfer->rx_len = (u8)rx_message_size;

 reinit_completion(&xfer->done);

 hdr->seq = xfer_id;
 hdr->type = msg_type;
 hdr->host = info->host_id;
 hdr->flags = msg_flags;

 return xfer;
}
