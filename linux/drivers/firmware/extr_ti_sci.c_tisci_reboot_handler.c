
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sci_handle {int dummy; } ;
struct ti_sci_info {struct ti_sci_handle handle; } ;
struct notifier_block {int dummy; } ;


 int NOTIFY_BAD ;
 struct ti_sci_info* reboot_to_ti_sci_info (struct notifier_block*) ;
 int ti_sci_cmd_core_reboot (struct ti_sci_handle const*) ;

__attribute__((used)) static int tisci_reboot_handler(struct notifier_block *nb, unsigned long mode,
    void *cmd)
{
 struct ti_sci_info *info = reboot_to_ti_sci_info(nb);
 const struct ti_sci_handle *handle = &info->handle;

 ti_sci_cmd_core_reboot(handle);


 return NOTIFY_BAD;
}
