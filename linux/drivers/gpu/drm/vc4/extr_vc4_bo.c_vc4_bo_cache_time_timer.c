
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int time_work; } ;
struct vc4_dev {TYPE_1__ bo_cache; } ;
struct timer_list {int dummy; } ;
struct TYPE_4__ {int time_timer; } ;


 TYPE_2__ bo_cache ;
 struct vc4_dev* from_timer (int ,struct timer_list*,int ) ;
 int schedule_work (int *) ;
 struct vc4_dev* vc4 ;

__attribute__((used)) static void vc4_bo_cache_time_timer(struct timer_list *t)
{
 struct vc4_dev *vc4 = from_timer(vc4, t, bo_cache.time_timer);

 schedule_work(&vc4->bo_cache.time_work);
}
