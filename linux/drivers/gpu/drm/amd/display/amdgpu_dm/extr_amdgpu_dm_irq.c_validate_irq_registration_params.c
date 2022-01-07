
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_interrupt_params {scalar_t__ int_context; scalar_t__ irq_source; } ;


 int DAL_VALID_IRQ_SRC_NUM (scalar_t__) ;
 int DRM_ERROR (char*,...) ;
 scalar_t__ INTERRUPT_CONTEXT_NUMBER ;

__attribute__((used)) static bool
validate_irq_registration_params(struct dc_interrupt_params *int_params,
     void (*ih)(void *))
{
 if (((void*)0) == int_params || ((void*)0) == ih) {
  DRM_ERROR("DM_IRQ: invalid input!\n");
  return 0;
 }

 if (int_params->int_context >= INTERRUPT_CONTEXT_NUMBER) {
  DRM_ERROR("DM_IRQ: invalid context: %d!\n",
    int_params->int_context);
  return 0;
 }

 if (!DAL_VALID_IRQ_SRC_NUM(int_params->irq_source)) {
  DRM_ERROR("DM_IRQ: invalid irq_source: %d!\n",
    int_params->irq_source);
  return 0;
 }

 return 1;
}
