
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int misc_features; } ;


 int CPUHP_AP_ONLINE_DYN ;
 int GFP_KERNEL ;
 int HV_CRASH_CTL_CRASH_NOTIFY_MSG ;
 int HV_FEATURE_GUEST_CRASH_MSR_AVAILABLE ;
 int VMBUS_MESSAGE_SINT ;
 int atomic_notifier_chain_register (int *,int *) ;
 int bus_register (int *) ;
 int bus_unregister (int *) ;
 int cpuhp_remove_state (int) ;
 int cpuhp_setup_state (int ,char*,int ,int ) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int hv_bus ;
 int * hv_ctl_table_hdr ;
 int hv_get_crash_ctl (int) ;
 int hv_init () ;
 int hv_kmsg_dumper ;
 void* hv_panic_page ;
 int hv_remove_vmbus_irq () ;
 int hv_root_table ;
 int hv_setup_vmbus_irq (int ) ;
 int hv_stimer_alloc (int ) ;
 int hv_stimer_free () ;
 int hv_synic_alloc () ;
 int hv_synic_cleanup ;
 int hv_synic_free () ;
 int hv_synic_init ;
 int hyperv_cpuhp_online ;
 int hyperv_die_block ;
 int hyperv_panic_block ;
 int kmsg_dump_register (int *) ;
 TYPE_1__ ms_hyperv ;
 int panic_notifier_list ;
 int pr_err (char*,...) ;
 int register_die_notifier (int *) ;
 int * register_sysctl_table (int ) ;
 int unregister_sysctl_table (int *) ;
 int vmbus_connect () ;
 int vmbus_isr ;
 int vmbus_request_offers () ;

__attribute__((used)) static int vmbus_bus_init(void)
{
 int ret;


 ret = hv_init();
 if (ret != 0) {
  pr_err("Unable to initialize the hypervisor - 0x%x\n", ret);
  return ret;
 }

 ret = bus_register(&hv_bus);
 if (ret)
  return ret;

 hv_setup_vmbus_irq(vmbus_isr);

 ret = hv_synic_alloc();
 if (ret)
  goto err_alloc;

 ret = hv_stimer_alloc(VMBUS_MESSAGE_SINT);
 if (ret < 0)
  goto err_alloc;





 ret = cpuhp_setup_state(CPUHP_AP_ONLINE_DYN, "hyperv/vmbus:online",
    hv_synic_init, hv_synic_cleanup);
 if (ret < 0)
  goto err_cpuhp;
 hyperv_cpuhp_online = ret;

 ret = vmbus_connect();
 if (ret)
  goto err_connect;




 if (ms_hyperv.misc_features & HV_FEATURE_GUEST_CRASH_MSR_AVAILABLE) {
  u64 hyperv_crash_ctl;




  hv_ctl_table_hdr = register_sysctl_table(hv_root_table);
  if (!hv_ctl_table_hdr)
   pr_err("Hyper-V: sysctl table register error");





  hv_get_crash_ctl(hyperv_crash_ctl);
  if (hyperv_crash_ctl & HV_CRASH_CTL_CRASH_NOTIFY_MSG) {
   hv_panic_page = (void *)get_zeroed_page(GFP_KERNEL);
   if (hv_panic_page) {
    ret = kmsg_dump_register(&hv_kmsg_dumper);
    if (ret)
     pr_err("Hyper-V: kmsg dump register "
      "error 0x%x\n", ret);
   } else
    pr_err("Hyper-V: panic message page memory "
     "allocation failed");
  }

  register_die_notifier(&hyperv_die_block);
  atomic_notifier_chain_register(&panic_notifier_list,
            &hyperv_panic_block);
 }

 vmbus_request_offers();

 return 0;

err_connect:
 cpuhp_remove_state(hyperv_cpuhp_online);
err_cpuhp:
 hv_stimer_free();
err_alloc:
 hv_synic_free();
 hv_remove_vmbus_irq();

 bus_unregister(&hv_bus);
 free_page((unsigned long)hv_panic_page);
 unregister_sysctl_table(hv_ctl_table_hdr);
 hv_ctl_table_hdr = ((void*)0);
 return ret;
}
