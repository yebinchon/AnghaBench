
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
typedef enum idh_request { ____Placeholder_idh_request } idh_request ;


 int IDH_REL_GPU_FINI_ACCESS ;
 int IDH_REL_GPU_INIT_ACCESS ;
 int xgpu_ai_send_access_requests (struct amdgpu_device*,int) ;

__attribute__((used)) static int xgpu_ai_release_full_gpu_access(struct amdgpu_device *adev,
        bool init)
{
 enum idh_request req;
 int r = 0;

 req = init ? IDH_REL_GPU_INIT_ACCESS : IDH_REL_GPU_FINI_ACCESS;
 r = xgpu_ai_send_access_requests(adev, req);

 return r;
}
