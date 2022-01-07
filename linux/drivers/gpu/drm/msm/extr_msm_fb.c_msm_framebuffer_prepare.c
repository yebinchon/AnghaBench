
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct msm_gem_address_space {int dummy; } ;
struct TYPE_4__ {int id; } ;
struct drm_framebuffer {TYPE_2__ base; int * obj; TYPE_1__* format; } ;
struct TYPE_3__ {int num_planes; } ;


 int DBG (char*,int ,int,int ,int) ;
 int msm_gem_get_and_pin_iova (int ,struct msm_gem_address_space*,int *) ;

int msm_framebuffer_prepare(struct drm_framebuffer *fb,
  struct msm_gem_address_space *aspace)
{
 int ret, i, n = fb->format->num_planes;
 uint64_t iova;

 for (i = 0; i < n; i++) {
  ret = msm_gem_get_and_pin_iova(fb->obj[i], aspace, &iova);
  DBG("FB[%u]: iova[%d]: %08llx (%d)", fb->base.id, i, iova, ret);
  if (ret)
   return ret;
 }

 return 0;
}
