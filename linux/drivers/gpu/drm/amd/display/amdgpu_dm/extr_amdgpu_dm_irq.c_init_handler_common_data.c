
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_dm_irq_handler_data {void (* handler ) (void*) ;struct amdgpu_display_manager* dm; void* handler_arg; } ;
struct amdgpu_display_manager {int dummy; } ;



__attribute__((used)) static void init_handler_common_data(struct amdgpu_dm_irq_handler_data *hcd,
         void (*ih)(void *),
         void *args,
         struct amdgpu_display_manager *dm)
{
 hcd->handler = ih;
 hcd->handler_arg = args;
 hcd->dm = dm;
}
