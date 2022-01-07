
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int event; } ;
struct TYPE_4__ {TYPE_1__ cm_event; int work; int local_id; } ;
struct cm_timewait_info {TYPE_2__ work; } ;
typedef int __be32 ;


 int ENOMEM ;
 struct cm_timewait_info* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IB_CM_TIMEWAIT_EXIT ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int cm_work_handler ;
 struct cm_timewait_info* kzalloc (int,int ) ;

__attribute__((used)) static struct cm_timewait_info * cm_create_timewait_info(__be32 local_id)
{
 struct cm_timewait_info *timewait_info;

 timewait_info = kzalloc(sizeof *timewait_info, GFP_KERNEL);
 if (!timewait_info)
  return ERR_PTR(-ENOMEM);

 timewait_info->work.local_id = local_id;
 INIT_DELAYED_WORK(&timewait_info->work.work, cm_work_handler);
 timewait_info->work.cm_event.event = IB_CM_TIMEWAIT_EXIT;
 return timewait_info;
}
