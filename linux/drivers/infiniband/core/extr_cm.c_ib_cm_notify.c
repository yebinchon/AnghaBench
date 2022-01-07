
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_cm_id {int dummy; } ;
typedef enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;


 int EINVAL ;


 int cm_establish (struct ib_cm_id*) ;
 int cm_migrate (struct ib_cm_id*) ;

int ib_cm_notify(struct ib_cm_id *cm_id, enum ib_event_type event)
{
 int ret;

 switch (event) {
 case 129:
  ret = cm_establish(cm_id);
  break;
 case 128:
  ret = cm_migrate(cm_id);
  break;
 default:
  ret = -EINVAL;
 }
 return ret;
}
