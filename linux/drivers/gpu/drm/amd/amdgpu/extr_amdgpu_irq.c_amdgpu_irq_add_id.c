
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_irq_src {unsigned int num_types; int * enabled_types; int funcs; } ;
struct TYPE_4__ {TYPE_1__* client; } ;
struct amdgpu_device {TYPE_2__ irq; } ;
typedef int atomic_t ;
struct TYPE_3__ {struct amdgpu_irq_src** sources; } ;


 unsigned int AMDGPU_IRQ_CLIENTID_MAX ;
 unsigned int AMDGPU_MAX_IRQ_SRC_ID ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* kcalloc (unsigned int,int,int ) ;

int amdgpu_irq_add_id(struct amdgpu_device *adev,
        unsigned client_id, unsigned src_id,
        struct amdgpu_irq_src *source)
{
 if (client_id >= AMDGPU_IRQ_CLIENTID_MAX)
  return -EINVAL;

 if (src_id >= AMDGPU_MAX_IRQ_SRC_ID)
  return -EINVAL;

 if (!source->funcs)
  return -EINVAL;

 if (!adev->irq.client[client_id].sources) {
  adev->irq.client[client_id].sources =
   kcalloc(AMDGPU_MAX_IRQ_SRC_ID,
    sizeof(struct amdgpu_irq_src *),
    GFP_KERNEL);
  if (!adev->irq.client[client_id].sources)
   return -ENOMEM;
 }

 if (adev->irq.client[client_id].sources[src_id] != ((void*)0))
  return -EINVAL;

 if (source->num_types && !source->enabled_types) {
  atomic_t *types;

  types = kcalloc(source->num_types, sizeof(atomic_t),
    GFP_KERNEL);
  if (!types)
   return -ENOMEM;

  source->enabled_types = types;
 }

 adev->irq.client[client_id].sources[src_id] = source;
 return 0;
}
