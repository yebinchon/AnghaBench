
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {scalar_t__ adev; } ;
struct amdgpu_irq_src {int * funcs; } ;
struct amdgpu_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SMUIO_9_0__SRCID__SMUIO_GPIO19 ;
 int SOC15_IH_CLIENTID_ROM_SMUIO ;
 int SOC15_IH_CLIENTID_THM ;
 int THM_9_0__SRCID__THM_DIG_THERM_H2L ;
 int THM_9_0__SRCID__THM_DIG_THERM_L2H ;
 int amdgpu_irq_add_id (struct amdgpu_device*,int ,int ,struct amdgpu_irq_src*) ;
 struct amdgpu_irq_src* kzalloc (int,int ) ;
 int smu9_irq_funcs ;

int smu9_register_irq_handlers(struct pp_hwmgr *hwmgr)
{
 struct amdgpu_irq_src *source =
  kzalloc(sizeof(struct amdgpu_irq_src), GFP_KERNEL);

 if (!source)
  return -ENOMEM;

 source->funcs = &smu9_irq_funcs;

 amdgpu_irq_add_id((struct amdgpu_device *)(hwmgr->adev),
   SOC15_IH_CLIENTID_THM,
   THM_9_0__SRCID__THM_DIG_THERM_L2H,
   source);
 amdgpu_irq_add_id((struct amdgpu_device *)(hwmgr->adev),
   SOC15_IH_CLIENTID_THM,
   THM_9_0__SRCID__THM_DIG_THERM_H2L,
   source);


 amdgpu_irq_add_id((struct amdgpu_device *)(hwmgr->adev),
   SOC15_IH_CLIENTID_ROM_SMUIO,
   SMUIO_9_0__SRCID__SMUIO_GPIO19,
   source);

 return 0;
}
