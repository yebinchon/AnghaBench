
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int IDH_FLR_NOTIFICATION_CMPL ;
 int xgpu_vi_poll_msg (struct amdgpu_device*,int ) ;

__attribute__((used)) static int xgpu_vi_wait_reset_cmpl(struct amdgpu_device *adev)
{
 return xgpu_vi_poll_msg(adev, IDH_FLR_NOTIFICATION_CMPL);
}
