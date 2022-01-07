
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s6sy761_data {int dummy; } ;


 int S6SY761_MASK_TID ;
 int S6SY761_MASK_TOUCH_STATE ;




 int s6sy761_report_coordinates (struct s6sy761_data*,int*,int) ;
 int s6sy761_report_release (struct s6sy761_data*,int*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void s6sy761_handle_coordinates(struct s6sy761_data *sdata, u8 *event)
{
 u8 tid;
 u8 touch_state;

 if (unlikely(!(event[0] & S6SY761_MASK_TID)))
  return;

 tid = ((event[0] & S6SY761_MASK_TID) >> 2) - 1;
 touch_state = (event[0] & S6SY761_MASK_TOUCH_STATE) >> 6;

 switch (touch_state) {

 case 130:
  break;
 case 128:
  s6sy761_report_release(sdata, event, tid);
  break;
 case 129:
 case 131:
  s6sy761_report_coordinates(sdata, event, tid);
  break;
 }
}
