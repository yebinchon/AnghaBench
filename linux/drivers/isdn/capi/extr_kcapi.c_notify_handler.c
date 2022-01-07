
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u32 ;
struct notifier_block {int dummy; } ;




 int NOTIFY_OK ;
 int notify_down (long) ;
 int notify_up (long) ;

__attribute__((used)) static int
notify_handler(struct notifier_block *nb, unsigned long val, void *v)
{
 u32 contr = (long)v;

 switch (val) {
 case 128:
  notify_up(contr);
  break;
 case 129:
  notify_down(contr);
  break;
 }
 return NOTIFY_OK;
}
