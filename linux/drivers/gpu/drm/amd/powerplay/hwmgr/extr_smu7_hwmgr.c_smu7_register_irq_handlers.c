
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {scalar_t__ adev; } ;
struct amdgpu_irq_src {int * funcs; } ;
struct amdgpu_device {int dummy; } ;


 int AMDGPU_IRQ_CLIENTID_LEGACY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int VISLANDS30_IV_SRCID_CG_TSS_THERMAL_HIGH_TO_LOW ;
 int VISLANDS30_IV_SRCID_CG_TSS_THERMAL_LOW_TO_HIGH ;
 int VISLANDS30_IV_SRCID_GPIO_19 ;
 int amdgpu_irq_add_id (struct amdgpu_device*,int ,int ,struct amdgpu_irq_src*) ;
 struct amdgpu_irq_src* kzalloc (int,int ) ;
 int smu7_irq_funcs ;

__attribute__((used)) static int smu7_register_irq_handlers(struct pp_hwmgr *hwmgr)
{
 struct amdgpu_irq_src *source =
  kzalloc(sizeof(struct amdgpu_irq_src), GFP_KERNEL);

 if (!source)
  return -ENOMEM;

 source->funcs = &smu7_irq_funcs;

 amdgpu_irq_add_id((struct amdgpu_device *)(hwmgr->adev),
   AMDGPU_IRQ_CLIENTID_LEGACY,
   VISLANDS30_IV_SRCID_CG_TSS_THERMAL_LOW_TO_HIGH,
   source);
 amdgpu_irq_add_id((struct amdgpu_device *)(hwmgr->adev),
   AMDGPU_IRQ_CLIENTID_LEGACY,
   VISLANDS30_IV_SRCID_CG_TSS_THERMAL_HIGH_TO_LOW,
   source);


 amdgpu_irq_add_id((struct amdgpu_device *)(hwmgr->adev),
   AMDGPU_IRQ_CLIENTID_LEGACY,
   VISLANDS30_IV_SRCID_GPIO_19,
   source);

 return 0;
}
