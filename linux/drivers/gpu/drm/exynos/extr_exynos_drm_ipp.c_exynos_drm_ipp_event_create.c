
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct exynos_drm_ipp_task {struct drm_pending_exynos_ipp_event* event; TYPE_1__* ipp; } ;
struct TYPE_6__ {int length; int type; } ;
struct TYPE_5__ {TYPE_3__ base; int user_data; } ;
struct drm_pending_exynos_ipp_event {TYPE_2__ event; int base; } ;
struct drm_file {int dummy; } ;
struct TYPE_4__ {int drm_dev; } ;


 int DRM_EXYNOS_IPP_EVENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_event_reserve_init (int ,struct drm_file*,int *,TYPE_3__*) ;
 int kfree (struct drm_pending_exynos_ipp_event*) ;
 struct drm_pending_exynos_ipp_event* kzalloc (int,int ) ;

__attribute__((used)) static int exynos_drm_ipp_event_create(struct exynos_drm_ipp_task *task,
     struct drm_file *file_priv, uint64_t user_data)
{
 struct drm_pending_exynos_ipp_event *e = ((void*)0);
 int ret;

 e = kzalloc(sizeof(*e), GFP_KERNEL);
 if (!e)
  return -ENOMEM;

 e->event.base.type = DRM_EXYNOS_IPP_EVENT;
 e->event.base.length = sizeof(e->event);
 e->event.user_data = user_data;

 ret = drm_event_reserve_init(task->ipp->drm_dev, file_priv, &e->base,
         &e->event.base);
 if (ret)
  goto free;

 task->event = e;
 return 0;
free:
 kfree(e);
 return ret;
}
