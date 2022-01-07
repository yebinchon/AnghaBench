
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iw_cm_id {int (* event_handler ) (struct iw_cm_id*,struct iw_cm_event*) ;} ;
struct iw_cm_event {int event; int status; int ord; int ird; int private_data_len; void* private_data; void* provider_data; } ;
struct TYPE_2__ {int size; } ;
struct i40iw_cm_node {int ord_size; int ird_size; TYPE_1__ pdata; scalar_t__ pdata_buf; int ipv4; } ;
typedef int event ;
typedef enum iw_cm_event_type { ____Placeholder_iw_cm_event_type } iw_cm_event_type ;







 int i40iw_fill_sockaddr4 (struct i40iw_cm_node*,struct iw_cm_event*) ;
 int i40iw_fill_sockaddr6 (struct i40iw_cm_node*,struct iw_cm_event*) ;
 int i40iw_get_cmevent_info (struct i40iw_cm_node*,struct iw_cm_id*,struct iw_cm_event*) ;
 int i40iw_pr_err (char*,int) ;
 int memset (struct iw_cm_event*,int ,int) ;
 int stub1 (struct iw_cm_id*,struct iw_cm_event*) ;

__attribute__((used)) static int i40iw_send_cm_event(struct i40iw_cm_node *cm_node,
          struct iw_cm_id *cm_id,
          enum iw_cm_event_type type,
          int status)
{
 struct iw_cm_event event;

 memset(&event, 0, sizeof(event));
 event.event = type;
 event.status = status;
 switch (type) {
 case 130:
  if (cm_node->ipv4)
   i40iw_fill_sockaddr4(cm_node, &event);
  else
   i40iw_fill_sockaddr6(cm_node, &event);
  event.provider_data = (void *)cm_node;
  event.private_data = (void *)cm_node->pdata_buf;
  event.private_data_len = (u8)cm_node->pdata.size;
  event.ird = cm_node->ird_size;
  break;
 case 131:
  i40iw_get_cmevent_info(cm_node, cm_id, &event);
  break;
 case 128:
  event.ird = cm_node->ird_size;
  event.ord = cm_node->ord_size;
  break;
 case 129:
  break;
 case 132:
  break;
 default:
  i40iw_pr_err("event type received type = %d\n", type);
  return -1;
 }
 return cm_id->event_handler(cm_id, &event);
}
