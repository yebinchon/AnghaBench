
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmsg_dumper {int dummy; } ;
typedef int phys_addr_t ;
typedef enum kmsg_dump_reason { ____Placeholder_kmsg_dump_reason } kmsg_dump_reason ;


 int KMSG_DUMP_PANIC ;
 int PAGE_SIZE ;
 int hv_panic_page ;
 int hyperv_report_panic_msg (int ,size_t) ;
 int kmsg_dump_get_buffer (struct kmsg_dumper*,int,int ,int ,size_t*) ;
 int sysctl_record_panic_msg ;
 int virt_to_phys (int ) ;

__attribute__((used)) static void hv_kmsg_dump(struct kmsg_dumper *dumper,
    enum kmsg_dump_reason reason)
{
 size_t bytes_written;
 phys_addr_t panic_pa;


 if ((reason != KMSG_DUMP_PANIC) || (!sysctl_record_panic_msg))
  return;

 panic_pa = virt_to_phys(hv_panic_page);





 kmsg_dump_get_buffer(dumper, 1, hv_panic_page, PAGE_SIZE,
        &bytes_written);
 if (bytes_written)
  hyperv_report_panic_msg(panic_pa, bytes_written);
}
