
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int time_timer; int time_work; int time_list; } ;
struct vc4_dev {int num_labels; TYPE_1__ bo_cache; int bo_lock; TYPE_2__* bo_labels; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int name; } ;


 int ARRAY_SIZE (int *) ;
 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int VC4_BO_TYPE_COUNT ;
 int * bo_type_names ;
 TYPE_2__* kcalloc (int,int,int ) ;
 int mutex_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_bo_cache_time_timer ;
 int vc4_bo_cache_time_work ;
 int vc4_bo_stats_debugfs ;
 int vc4_debugfs_add_file (struct drm_device*,char*,int ,int *) ;

int vc4_bo_cache_init(struct drm_device *dev)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 int i;





 vc4->bo_labels = kcalloc(VC4_BO_TYPE_COUNT, sizeof(*vc4->bo_labels),
     GFP_KERNEL);
 if (!vc4->bo_labels)
  return -ENOMEM;
 vc4->num_labels = VC4_BO_TYPE_COUNT;

 BUILD_BUG_ON(ARRAY_SIZE(bo_type_names) != VC4_BO_TYPE_COUNT);
 for (i = 0; i < VC4_BO_TYPE_COUNT; i++)
  vc4->bo_labels[i].name = bo_type_names[i];

 mutex_init(&vc4->bo_lock);

 vc4_debugfs_add_file(dev, "bo_stats", vc4_bo_stats_debugfs, ((void*)0));

 INIT_LIST_HEAD(&vc4->bo_cache.time_list);

 INIT_WORK(&vc4->bo_cache.time_work, vc4_bo_cache_time_work);
 timer_setup(&vc4->bo_cache.time_timer, vc4_bo_cache_time_timer, 0);

 return 0;
}
