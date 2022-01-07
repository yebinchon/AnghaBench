
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int panic_detected ;

__attribute__((used)) static int activity_panic_notifier(struct notifier_block *nb,
                                   unsigned long code, void *unused)
{
 panic_detected = 1;
 return NOTIFY_DONE;
}
