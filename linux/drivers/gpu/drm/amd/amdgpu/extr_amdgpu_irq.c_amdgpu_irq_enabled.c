
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_irq_src {unsigned int num_types; int * enabled_types; TYPE_2__* funcs; } ;
struct amdgpu_device {TYPE_1__* ddev; } ;
struct TYPE_4__ {int set; } ;
struct TYPE_3__ {int irq_enabled; } ;


 int atomic_read (int *) ;

bool amdgpu_irq_enabled(struct amdgpu_device *adev, struct amdgpu_irq_src *src,
   unsigned type)
{
 if (!adev->ddev->irq_enabled)
  return 0;

 if (type >= src->num_types)
  return 0;

 if (!src->enabled_types || !src->funcs->set)
  return 0;

 return !!atomic_read(&src->enabled_types[type]);
}
