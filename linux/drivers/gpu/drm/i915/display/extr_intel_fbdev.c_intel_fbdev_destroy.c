
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* dev; } ;
struct intel_fbdev {TYPE_1__* fb; TYPE_3__ helper; int vma_flags; scalar_t__ vma; } ;
struct TYPE_5__ {int struct_mutex; } ;
struct TYPE_4__ {int base; } ;


 int drm_fb_helper_fini (TYPE_3__*) ;
 int drm_framebuffer_remove (int *) ;
 int intel_unpin_fb_vma (scalar_t__,int ) ;
 int kfree (struct intel_fbdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void intel_fbdev_destroy(struct intel_fbdev *ifbdev)
{





 drm_fb_helper_fini(&ifbdev->helper);

 if (ifbdev->vma) {
  mutex_lock(&ifbdev->helper.dev->struct_mutex);
  intel_unpin_fb_vma(ifbdev->vma, ifbdev->vma_flags);
  mutex_unlock(&ifbdev->helper.dev->struct_mutex);
 }

 if (ifbdev->fb)
  drm_framebuffer_remove(&ifbdev->fb->base);

 kfree(ifbdev);
}
