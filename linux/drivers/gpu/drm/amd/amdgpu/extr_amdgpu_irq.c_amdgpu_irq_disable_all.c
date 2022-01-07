
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct amdgpu_irq_src {unsigned int num_types; TYPE_2__* funcs; int * enabled_types; } ;
struct TYPE_6__ {int lock; TYPE_1__* client; } ;
struct amdgpu_device {TYPE_3__ irq; } ;
struct TYPE_5__ {int (* set ) (struct amdgpu_device*,struct amdgpu_irq_src*,unsigned int,int ) ;} ;
struct TYPE_4__ {struct amdgpu_irq_src** sources; } ;


 unsigned int AMDGPU_IRQ_CLIENTID_MAX ;
 int AMDGPU_IRQ_STATE_DISABLE ;
 unsigned int AMDGPU_MAX_IRQ_SRC_ID ;
 int DRM_ERROR (char*,int) ;
 int atomic_set (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct amdgpu_device*,struct amdgpu_irq_src*,unsigned int,int ) ;

void amdgpu_irq_disable_all(struct amdgpu_device *adev)
{
 unsigned long irqflags;
 unsigned i, j, k;
 int r;

 spin_lock_irqsave(&adev->irq.lock, irqflags);
 for (i = 0; i < AMDGPU_IRQ_CLIENTID_MAX; ++i) {
  if (!adev->irq.client[i].sources)
   continue;

  for (j = 0; j < AMDGPU_MAX_IRQ_SRC_ID; ++j) {
   struct amdgpu_irq_src *src = adev->irq.client[i].sources[j];

   if (!src || !src->funcs->set || !src->num_types)
    continue;

   for (k = 0; k < src->num_types; ++k) {
    atomic_set(&src->enabled_types[k], 0);
    r = src->funcs->set(adev, src, k,
          AMDGPU_IRQ_STATE_DISABLE);
    if (r)
     DRM_ERROR("error disabling interrupt (%d)\n",
        r);
   }
  }
 }
 spin_unlock_irqrestore(&adev->irq.lock, irqflags);
}
