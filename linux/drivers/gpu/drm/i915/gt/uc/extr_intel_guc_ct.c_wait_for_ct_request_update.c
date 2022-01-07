
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ct_request {int status; int fence; } ;


 int DRM_ERROR (char*,int ,int) ;
 int done ;
 scalar_t__ unlikely (int) ;
 int wait_for (int ,int) ;
 int wait_for_us (int ,int) ;

__attribute__((used)) static int wait_for_ct_request_update(struct ct_request *req, u32 *status)
{
 int err;







 err = wait_for_us(INTEL_GUC_MSG_IS_RESPONSE(READ_ONCE(req->status)), 10);
 if (err)
  err = wait_for(INTEL_GUC_MSG_IS_RESPONSE(READ_ONCE(req->status)), 10);


 if (unlikely(err))
  DRM_ERROR("CT: fence %u err %d\n", req->fence, err);

 *status = req->status;
 return err;
}
