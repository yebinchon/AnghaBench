
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct kfd_signal_page {void* kernel_address; } ;
struct kfd_process {int signal_mapped_size; struct kfd_signal_page* signal_page; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KFD_SIGNAL_EVENT_LIMIT ;
 scalar_t__ UNSIGNALED_EVENT_SLOT ;
 struct kfd_signal_page* kzalloc (int,int ) ;
 int memset (void*,int ,int) ;

int kfd_event_page_set(struct kfd_process *p, void *kernel_address,
         uint64_t size)
{
 struct kfd_signal_page *page;

 if (p->signal_page)
  return -EBUSY;

 page = kzalloc(sizeof(*page), GFP_KERNEL);
 if (!page)
  return -ENOMEM;


 memset(kernel_address, (uint8_t) UNSIGNALED_EVENT_SLOT,
        KFD_SIGNAL_EVENT_LIMIT * 8);

 page->kernel_address = kernel_address;

 p->signal_page = page;
 p->signal_mapped_size = size;

 return 0;
}
