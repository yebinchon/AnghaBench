
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int cik_srbm_select (struct amdgpu_device*,int ,int ,int ,int ) ;

__attribute__((used)) static void gfx_v7_0_select_me_pipe_q(struct amdgpu_device *adev,
      u32 me, u32 pipe, u32 q, u32 vm)
{
 cik_srbm_select(adev, me, pipe, q, vm);
}
