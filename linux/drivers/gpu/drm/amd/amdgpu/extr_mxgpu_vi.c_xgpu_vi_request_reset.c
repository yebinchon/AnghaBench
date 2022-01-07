
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int IDH_REQ_GPU_RESET_ACCESS ;
 int xgpu_vi_send_access_requests (struct amdgpu_device*,int ) ;

__attribute__((used)) static int xgpu_vi_request_reset(struct amdgpu_device *adev)
{
 return xgpu_vi_send_access_requests(adev, IDH_REQ_GPU_RESET_ACCESS);
}
