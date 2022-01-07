
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct devfreq_event_dev {TYPE_1__* desc; } ;
struct TYPE_5__ {int id; int name; } ;
struct TYPE_4__ {int name; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int EINVAL ;
 TYPE_2__* ppmu_events ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int exynos_ppmu_find_ppmu_id(struct devfreq_event_dev *edev)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ppmu_events); i++)
  if (!strcmp(edev->desc->name, ppmu_events[i].name))
   return ppmu_events[i].id;

 return -EINVAL;
}
