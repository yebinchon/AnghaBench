
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_guc_ct {int worker; int lock; int incoming_requests; } ;
struct ct_incoming_request {int link; int msg; } ;


 int DRM_ERROR (char*,int,int const*) ;
 int GEM_BUG_ON (int ) ;
 int GFP_ATOMIC ;
 int ct_header_get_len (int) ;
 int ct_header_is_response (int) ;
 struct ct_incoming_request* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int const*,int) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int system_unbound_wq ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ct_handle_request(struct intel_guc_ct *ct, const u32 *msg)
{
 u32 header = msg[0];
 u32 len = ct_header_get_len(header);
 u32 msglen = len + 1;
 struct ct_incoming_request *request;
 unsigned long flags;

 GEM_BUG_ON(ct_header_is_response(header));

 request = kmalloc(sizeof(*request) + 4 * msglen, GFP_ATOMIC);
 if (unlikely(!request)) {
  DRM_ERROR("CT: dropping request %*ph\n", 4 * msglen, msg);
  return 0;
 }
 memcpy(request->msg, msg, 4 * msglen);

 spin_lock_irqsave(&ct->lock, flags);
 list_add_tail(&request->link, &ct->incoming_requests);
 spin_unlock_irqrestore(&ct->lock, flags);

 queue_work(system_unbound_wq, &ct->worker);
 return 0;
}
