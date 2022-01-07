
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct kfd_signal_page {int * kernel_address; } ;



__attribute__((used)) static uint64_t *page_slots(struct kfd_signal_page *page)
{
 return page->kernel_address;
}
