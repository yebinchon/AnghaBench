
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int num_crtc; TYPE_1__** crtcs; } ;
struct amdgpu_device {TYPE_2__ mode_info; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;
struct TYPE_9__ {int function; } ;
struct TYPE_7__ {int vsync_timer_enabled; TYPE_3__ vblank_timer; } ;


 int CLOCK_MONOTONIC ;
 int DCE_VIRTUAL_VBLANK_PERIOD ;
 int DRM_DEBUG (char*,...) ;
 int HRTIMER_MODE_REL ;
 int dce_virtual_vblank_timer_handle ;
 int hrtimer_cancel (TYPE_3__*) ;
 int hrtimer_init (TYPE_3__*,int ,int ) ;
 int hrtimer_set_expires (TYPE_3__*,int ) ;
 int hrtimer_start (TYPE_3__*,int ,int ) ;

__attribute__((used)) static void dce_virtual_set_crtc_vblank_interrupt_state(struct amdgpu_device *adev,
       int crtc,
       enum amdgpu_interrupt_state state)
{
 if (crtc >= adev->mode_info.num_crtc || !adev->mode_info.crtcs[crtc]) {
  DRM_DEBUG("invalid crtc %d\n", crtc);
  return;
 }

 if (state && !adev->mode_info.crtcs[crtc]->vsync_timer_enabled) {
  DRM_DEBUG("Enable software vsync timer\n");
  hrtimer_init(&adev->mode_info.crtcs[crtc]->vblank_timer,
        CLOCK_MONOTONIC, HRTIMER_MODE_REL);
  hrtimer_set_expires(&adev->mode_info.crtcs[crtc]->vblank_timer,
        DCE_VIRTUAL_VBLANK_PERIOD);
  adev->mode_info.crtcs[crtc]->vblank_timer.function =
   dce_virtual_vblank_timer_handle;
  hrtimer_start(&adev->mode_info.crtcs[crtc]->vblank_timer,
         DCE_VIRTUAL_VBLANK_PERIOD, HRTIMER_MODE_REL);
 } else if (!state && adev->mode_info.crtcs[crtc]->vsync_timer_enabled) {
  DRM_DEBUG("Disable software vsync timer\n");
  hrtimer_cancel(&adev->mode_info.crtcs[crtc]->vblank_timer);
 }

 adev->mode_info.crtcs[crtc]->vsync_timer_enabled = state;
 DRM_DEBUG("[FM]set crtc %d vblank interrupt state %d\n", crtc, state);
}
