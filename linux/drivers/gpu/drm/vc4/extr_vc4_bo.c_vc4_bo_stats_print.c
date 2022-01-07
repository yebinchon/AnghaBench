
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; int purged_size; int lock; scalar_t__ purged_num; scalar_t__ num; } ;
struct vc4_dev {int num_labels; TYPE_2__ purgeable; TYPE_1__* bo_labels; } ;
struct drm_printer {int dummy; } ;
struct TYPE_3__ {char* name; int size_allocated; scalar_t__ num_allocated; } ;


 int drm_printf (struct drm_printer*,char*,char*,int,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void vc4_bo_stats_print(struct drm_printer *p, struct vc4_dev *vc4)
{
 int i;

 for (i = 0; i < vc4->num_labels; i++) {
  if (!vc4->bo_labels[i].num_allocated)
   continue;

  drm_printf(p, "%30s: %6dkb BOs (%d)\n",
      vc4->bo_labels[i].name,
      vc4->bo_labels[i].size_allocated / 1024,
      vc4->bo_labels[i].num_allocated);
 }

 mutex_lock(&vc4->purgeable.lock);
 if (vc4->purgeable.num)
  drm_printf(p, "%30s: %6zdkb BOs (%d)\n", "userspace BO cache",
      vc4->purgeable.size / 1024, vc4->purgeable.num);

 if (vc4->purgeable.purged_num)
  drm_printf(p, "%30s: %6zdkb BOs (%d)\n", "total purged BO",
      vc4->purgeable.purged_size / 1024,
      vc4->purgeable.purged_num);
 mutex_unlock(&vc4->purgeable.lock);
}
