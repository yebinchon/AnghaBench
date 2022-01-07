
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_drm_ipp_funcs {int dummy; } ;
struct exynos_drm_ipp_formats {int dummy; } ;
struct exynos_drm_ipp {unsigned int capabilities; char const* name; unsigned int num_formats; scalar_t__ id; int head; struct exynos_drm_ipp_formats const* formats; struct exynos_drm_ipp_funcs const* funcs; struct device* dev; int done_wq; int todo_list; int lock; } ;
struct device {int dummy; } ;


 int DRM_DEV_DEBUG_DRIVER (struct device*,char*,scalar_t__) ;
 int INIT_LIST_HEAD (int *) ;
 int WARN_ON (int) ;
 int init_waitqueue_head (int *) ;
 int ipp_list ;
 int list_add_tail (int *,int *) ;
 int num_ipp ;
 int spin_lock_init (int *) ;

int exynos_drm_ipp_register(struct device *dev, struct exynos_drm_ipp *ipp,
  const struct exynos_drm_ipp_funcs *funcs, unsigned int caps,
  const struct exynos_drm_ipp_formats *formats,
  unsigned int num_formats, const char *name)
{
 WARN_ON(!ipp);
 WARN_ON(!funcs);
 WARN_ON(!formats);
 WARN_ON(!num_formats);

 spin_lock_init(&ipp->lock);
 INIT_LIST_HEAD(&ipp->todo_list);
 init_waitqueue_head(&ipp->done_wq);
 ipp->dev = dev;
 ipp->funcs = funcs;
 ipp->capabilities = caps;
 ipp->name = name;
 ipp->formats = formats;
 ipp->num_formats = num_formats;


 list_add_tail(&ipp->head, &ipp_list);
 ipp->id = num_ipp++;

 DRM_DEV_DEBUG_DRIVER(dev, "Registered ipp %d\n", ipp->id);

 return 0;
}
