
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct creq_func_event {int event; } ;
 int EINVAL ;

__attribute__((used)) static int bnxt_re_handle_unaffi_async_event(struct creq_func_event
          *unaffi_async)
{
 switch (unaffi_async->event) {
 case 128:
  break;
 case 129:
  break;
 case 132:
  break;
 case 133:
  break;
 case 134:
  break;
 case 130:
  break;
 case 136:
  break;
 case 135:
  break;
 case 138:
  break;
 case 137:
  break;
 case 131:
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
