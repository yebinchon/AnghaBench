
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct scmi_xfers_info {struct scmi_xfer* xfer_block; int xfer_lock; int xfer_alloc_table; } ;
struct TYPE_4__ {size_t seq; } ;
struct scmi_xfer {int done; TYPE_2__ hdr; } ;
struct scmi_info {TYPE_1__* desc; } ;
struct scmi_handle {int dummy; } ;
struct TYPE_3__ {unsigned long max_msg; } ;


 int ENOMEM ;
 struct scmi_xfer* ERR_PTR (int ) ;
 unsigned long find_first_zero_bit (int ,unsigned long) ;
 struct scmi_info* handle_to_scmi_info (struct scmi_handle const*) ;
 int reinit_completion (int *) ;
 int set_bit (unsigned long,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct scmi_xfer *scmi_xfer_get(const struct scmi_handle *handle,
           struct scmi_xfers_info *minfo)
{
 u16 xfer_id;
 struct scmi_xfer *xfer;
 unsigned long flags, bit_pos;
 struct scmi_info *info = handle_to_scmi_info(handle);


 spin_lock_irqsave(&minfo->xfer_lock, flags);
 bit_pos = find_first_zero_bit(minfo->xfer_alloc_table,
          info->desc->max_msg);
 if (bit_pos == info->desc->max_msg) {
  spin_unlock_irqrestore(&minfo->xfer_lock, flags);
  return ERR_PTR(-ENOMEM);
 }
 set_bit(bit_pos, minfo->xfer_alloc_table);
 spin_unlock_irqrestore(&minfo->xfer_lock, flags);

 xfer_id = bit_pos;

 xfer = &minfo->xfer_block[xfer_id];
 xfer->hdr.seq = xfer_id;
 reinit_completion(&xfer->done);

 return xfer;
}
