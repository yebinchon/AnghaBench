
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct creq_func_event {int event; } ;
struct bnxt_qplib_rcfw {int dummy; } ;
 int EINVAL ;

__attribute__((used)) static int bnxt_qplib_process_func_event(struct bnxt_qplib_rcfw *rcfw,
      struct creq_func_event *func_event)
{
 switch (func_event->event) {
 case 129:
  break;
 case 130:
  break;
 case 133:
  break;
 case 134:
  break;
 case 136:
  break;
 case 131:
  break;
 case 138:
  break;
 case 137:



  break;
 case 140:
  break;
 case 139:
  break;
 case 132:
  break;
 case 128:
  break;
 case 135:
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
