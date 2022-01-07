
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ irq_handler_idx ;
typedef enum dc_irq_source { ____Placeholder_dc_irq_source } dc_irq_source ;


 scalar_t__ DAL_INVALID_IRQ_HANDLER_IDX ;
 int DAL_VALID_IRQ_SRC_NUM (int) ;
 int DRM_ERROR (char*,...) ;

__attribute__((used)) static bool validate_irq_unregistration_params(enum dc_irq_source irq_source,
            irq_handler_idx handler_idx)
{
 if (DAL_INVALID_IRQ_HANDLER_IDX == handler_idx) {
  DRM_ERROR("DM_IRQ: invalid handler_idx==NULL!\n");
  return 0;
 }

 if (!DAL_VALID_IRQ_SRC_NUM(irq_source)) {
  DRM_ERROR("DM_IRQ: invalid irq_source:%d!\n", irq_source);
  return 0;
 }

 return 1;
}
