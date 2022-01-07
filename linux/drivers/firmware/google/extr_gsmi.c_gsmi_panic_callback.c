
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int GSMI_SHUTDOWN_PANIC ;
 int NOTIFY_DONE ;
 int gsmi_shutdown_reason (int ) ;

__attribute__((used)) static int gsmi_panic_callback(struct notifier_block *nb,
          unsigned long reason, void *arg)
{
 gsmi_shutdown_reason(GSMI_SHUTDOWN_PANIC);
 return NOTIFY_DONE;
}
