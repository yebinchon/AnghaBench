
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* state; TYPE_1__* dev; } ;
struct amdgpu_crtc {int crtc_id; TYPE_3__ base; int pflip_status; int * event; } ;
struct TYPE_5__ {int * event; } ;
struct TYPE_4__ {int event_lock; } ;


 int AMDGPU_FLIP_SUBMITTED ;
 int DRM_DEBUG_DRIVER (char*,int ) ;
 int WARN_ON (int *) ;
 int assert_spin_locked (int *) ;

__attribute__((used)) static void prepare_flip_isr(struct amdgpu_crtc *acrtc)
{

 assert_spin_locked(&acrtc->base.dev->event_lock);
 WARN_ON(acrtc->event);

 acrtc->event = acrtc->base.state->event;


 acrtc->pflip_status = AMDGPU_FLIP_SUBMITTED;


 acrtc->base.state->event = ((void*)0);

 DRM_DEBUG_DRIVER("crtc:%d, pflip_stat:AMDGPU_FLIP_SUBMITTED\n",
       acrtc->crtc_id);
}
