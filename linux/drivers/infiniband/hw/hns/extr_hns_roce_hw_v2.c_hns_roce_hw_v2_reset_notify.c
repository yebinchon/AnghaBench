
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_handle {int dummy; } ;
typedef enum hnae3_reset_notify_type { ____Placeholder_hnae3_reset_notify_type } hnae3_reset_notify_type ;





 int hns_roce_hw_v2_reset_notify_down (struct hnae3_handle*) ;
 int hns_roce_hw_v2_reset_notify_init (struct hnae3_handle*) ;
 int hns_roce_hw_v2_reset_notify_uninit (struct hnae3_handle*) ;

__attribute__((used)) static int hns_roce_hw_v2_reset_notify(struct hnae3_handle *handle,
           enum hnae3_reset_notify_type type)
{
 int ret = 0;

 switch (type) {
 case 130:
  ret = hns_roce_hw_v2_reset_notify_down(handle);
  break;
 case 129:
  ret = hns_roce_hw_v2_reset_notify_init(handle);
  break;
 case 128:
  ret = hns_roce_hw_v2_reset_notify_uninit(handle);
  break;
 default:
  break;
 }

 return ret;
}
