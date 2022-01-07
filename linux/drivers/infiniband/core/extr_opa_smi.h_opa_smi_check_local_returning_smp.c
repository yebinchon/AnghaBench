
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct opa_smp {int hop_ptr; } ;
struct TYPE_2__ {scalar_t__ process_mad; } ;
struct ib_device {TYPE_1__ ops; } ;
typedef enum smi_action { ____Placeholder_smi_action } smi_action ;


 int IB_SMI_DISCARD ;
 int IB_SMI_HANDLE ;
 scalar_t__ opa_get_smp_direction (struct opa_smp*) ;

__attribute__((used)) static inline enum smi_action opa_smi_check_local_returning_smp(struct opa_smp *smp,
        struct ib_device *device)
{


 return (device->ops.process_mad &&
  opa_get_smp_direction(smp) &&
  !smp->hop_ptr) ? IB_SMI_HANDLE : IB_SMI_DISCARD;
}
