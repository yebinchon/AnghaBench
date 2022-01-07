
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_4__* cm_id; } ;
struct i40iw_cm_event {int event_work; TYPE_2__* cm_node; TYPE_1__ cm_info; } ;
struct TYPE_8__ {int (* add_ref ) (TYPE_4__*) ;} ;
struct TYPE_7__ {int event_wq; } ;
struct TYPE_6__ {TYPE_3__* cm_core; int ref_count; } ;


 int INIT_WORK (int *,int ) ;
 int atomic_inc (int *) ;
 int i40iw_cm_event_handler ;
 int queue_work (int ,int *) ;
 int stub1 (TYPE_4__*) ;

__attribute__((used)) static void i40iw_cm_post_event(struct i40iw_cm_event *event)
{
 atomic_inc(&event->cm_node->ref_count);
 event->cm_info.cm_id->add_ref(event->cm_info.cm_id);
 INIT_WORK(&event->event_work, i40iw_cm_event_handler);

 queue_work(event->cm_node->cm_core->event_wq, &event->event_work);
}
