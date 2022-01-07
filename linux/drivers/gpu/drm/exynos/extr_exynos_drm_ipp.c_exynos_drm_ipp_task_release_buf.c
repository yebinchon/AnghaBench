
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_drm_ipp_buffer {int * exynos_gem; TYPE_1__* format; } ;
struct TYPE_2__ {int num_planes; } ;


 int exynos_drm_gem_put (int ) ;

__attribute__((used)) static void exynos_drm_ipp_task_release_buf(struct exynos_drm_ipp_buffer *buf)
{
 int i;

 if (!buf->exynos_gem[0])
  return;
 for (i = 0; i < buf->format->num_planes; i++)
  exynos_drm_gem_put(buf->exynos_gem[i]);
}
