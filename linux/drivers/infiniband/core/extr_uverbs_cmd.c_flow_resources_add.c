
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_uflow_resources {scalar_t__ num; scalar_t__ max; int counters_num; struct ib_counters** counters; int collection_num; struct ib_flow_action** collection; } ;
struct ib_flow_action {int usecnt; } ;
struct ib_counters {int usecnt; } ;
typedef enum ib_flow_spec_type { ____Placeholder_ib_flow_spec_type } ib_flow_spec_type ;




 int WARN_ON (int) ;
 int atomic_inc (int *) ;

void flow_resources_add(struct ib_uflow_resources *uflow_res,
   enum ib_flow_spec_type type,
   void *ibobj)
{
 WARN_ON(uflow_res->num >= uflow_res->max);

 switch (type) {
 case 128:
  atomic_inc(&((struct ib_flow_action *)ibobj)->usecnt);
  uflow_res->collection[uflow_res->collection_num++] =
   (struct ib_flow_action *)ibobj;
  break;
 case 129:
  atomic_inc(&((struct ib_counters *)ibobj)->usecnt);
  uflow_res->counters[uflow_res->counters_num++] =
   (struct ib_counters *)ibobj;
  break;
 default:
  WARN_ON(1);
 }

 uflow_res->num++;
}
