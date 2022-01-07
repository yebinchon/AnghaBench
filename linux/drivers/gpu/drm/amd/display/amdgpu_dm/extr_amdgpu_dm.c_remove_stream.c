
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_stream_state {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {int otg_inst; int enabled; } ;



__attribute__((used)) static void remove_stream(struct amdgpu_device *adev,
     struct amdgpu_crtc *acrtc,
     struct dc_stream_state *stream)
{


 acrtc->otg_inst = -1;
 acrtc->enabled = 0;
}
