
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_crtc {int dummy; } ;
struct TYPE_2__ {int frame_pending; } ;


 int EINVAL ;
 int atomic_read (int *) ;
 TYPE_1__* to_dpu_crtc (struct drm_crtc*) ;

__attribute__((used)) static inline int dpu_crtc_frame_pending(struct drm_crtc *crtc)
{
 return crtc ? atomic_read(&to_dpu_crtc(crtc)->frame_pending) : -EINVAL;
}
