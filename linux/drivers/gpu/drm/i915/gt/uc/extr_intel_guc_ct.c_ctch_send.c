
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_guc_ct_channel {int enabled; struct intel_guc_ct_buffer* ctbs; } ;
struct intel_guc_ct_buffer {struct guc_ct_buffer_desc* desc; } ;
struct intel_guc_ct {int lock; int pending_requests; } ;
struct guc_ct_buffer_desc {int dummy; } ;
struct ct_request {int fence; int status; int response_len; int* response_buf; int link; } ;


 size_t CTB_SEND ;
 int EIO ;
 int GEM_BUG_ON (int) ;
 int GUC_CT_MSG_LEN_MASK ;
 int INTEL_GUC_MSG_IS_RESPONSE_SUCCESS (int) ;
 int INTEL_GUC_MSG_TO_DATA (int) ;
 int WARN_ON (int) ;
 int ct_to_guc (struct intel_guc_ct*) ;
 int ctb_write (struct intel_guc_ct_buffer*,int const*,int,int,int) ;
 int ctch_get_next_fence (struct intel_guc_ct_channel*) ;
 int intel_guc_notify (int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int wait_for_ct_request_update (struct ct_request*,int*) ;
 int wait_for_ctb_desc_update (struct guc_ct_buffer_desc*,int,int*) ;

__attribute__((used)) static int ctch_send(struct intel_guc_ct *ct,
       struct intel_guc_ct_channel *ctch,
       const u32 *action,
       u32 len,
       u32 *response_buf,
       u32 response_buf_size,
       u32 *status)
{
 struct intel_guc_ct_buffer *ctb = &ctch->ctbs[CTB_SEND];
 struct guc_ct_buffer_desc *desc = ctb->desc;
 struct ct_request request;
 unsigned long flags;
 u32 fence;
 int err;

 GEM_BUG_ON(!ctch->enabled);
 GEM_BUG_ON(!len);
 GEM_BUG_ON(len & ~GUC_CT_MSG_LEN_MASK);
 GEM_BUG_ON(!response_buf && response_buf_size);

 fence = ctch_get_next_fence(ctch);
 request.fence = fence;
 request.status = 0;
 request.response_len = response_buf_size;
 request.response_buf = response_buf;

 spin_lock_irqsave(&ct->lock, flags);
 list_add_tail(&request.link, &ct->pending_requests);
 spin_unlock_irqrestore(&ct->lock, flags);

 err = ctb_write(ctb, action, len, fence, !!response_buf);
 if (unlikely(err))
  goto unlink;

 intel_guc_notify(ct_to_guc(ct));

 if (response_buf)
  err = wait_for_ct_request_update(&request, status);
 else
  err = wait_for_ctb_desc_update(desc, fence, status);
 if (unlikely(err))
  goto unlink;

 if (!INTEL_GUC_MSG_IS_RESPONSE_SUCCESS(*status)) {
  err = -EIO;
  goto unlink;
 }

 if (response_buf) {

  WARN_ON(INTEL_GUC_MSG_TO_DATA(request.status));

  err = request.response_len;
 } else {

  WARN_ON(request.response_len);

  err = INTEL_GUC_MSG_TO_DATA(*status);
 }

unlink:
 spin_lock_irqsave(&ct->lock, flags);
 list_del(&request.link);
 spin_unlock_irqrestore(&ct->lock, flags);

 return err;
}
