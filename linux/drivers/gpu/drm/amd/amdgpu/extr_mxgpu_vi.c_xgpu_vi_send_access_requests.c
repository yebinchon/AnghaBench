
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
typedef enum idh_request { ____Placeholder_idh_request } idh_request ;


 int IDH_READY_TO_ACCESS_GPU ;
 int IDH_REQ_GPU_FINI_ACCESS ;
 int IDH_REQ_GPU_INIT_ACCESS ;
 int IDH_REQ_GPU_RESET_ACCESS ;
 int pr_err (char*) ;
 int xgpu_vi_mailbox_set_valid (struct amdgpu_device*,int) ;
 int xgpu_vi_mailbox_trans_msg (struct amdgpu_device*,int) ;
 int xgpu_vi_poll_ack (struct amdgpu_device*) ;
 int xgpu_vi_poll_msg (struct amdgpu_device*,int ) ;

__attribute__((used)) static int xgpu_vi_send_access_requests(struct amdgpu_device *adev,
     enum idh_request request)
{
 int r;

 xgpu_vi_mailbox_trans_msg(adev, request);


 r = xgpu_vi_poll_ack(adev);
 if (r)
  return r;

 xgpu_vi_mailbox_set_valid(adev, 0);


 if (request == IDH_REQ_GPU_INIT_ACCESS ||
  request == IDH_REQ_GPU_FINI_ACCESS ||
  request == IDH_REQ_GPU_RESET_ACCESS) {
  r = xgpu_vi_poll_msg(adev, IDH_READY_TO_ACCESS_GPU);
  if (r) {
   pr_err("Doesn't get ack from pf, give up\n");
   return r;
  }
 }

 return 0;
}
