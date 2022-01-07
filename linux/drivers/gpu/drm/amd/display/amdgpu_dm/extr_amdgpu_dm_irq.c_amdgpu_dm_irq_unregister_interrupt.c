
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct dc_interrupt_params {int irq_source; int int_context; } ;
struct amdgpu_device {int dummy; } ;
typedef int int_params ;
typedef enum dc_irq_source { ____Placeholder_dc_irq_source } dc_irq_source ;


 int DRM_ERROR (char*,void*,int) ;
 int INTERRUPT_CONTEXT_NUMBER ;
 int memset (struct dc_interrupt_params*,int ,int) ;
 struct list_head* remove_irq_handler (struct amdgpu_device*,void*,struct dc_interrupt_params*) ;
 int validate_irq_unregistration_params (int,void*) ;

void amdgpu_dm_irq_unregister_interrupt(struct amdgpu_device *adev,
     enum dc_irq_source irq_source,
     void *ih)
{
 struct list_head *handler_list;
 struct dc_interrupt_params int_params;
 int i;

 if (0 == validate_irq_unregistration_params(irq_source, ih))
  return;

 memset(&int_params, 0, sizeof(int_params));

 int_params.irq_source = irq_source;

 for (i = 0; i < INTERRUPT_CONTEXT_NUMBER; i++) {

  int_params.int_context = i;

  handler_list = remove_irq_handler(adev, ih, &int_params);

  if (handler_list != ((void*)0))
   break;
 }

 if (handler_list == ((void*)0)) {


  DRM_ERROR(
  "DM_IRQ: failed to find irq handler:%p for irq_source:%d!\n",
   ih, irq_source);
 }
}
