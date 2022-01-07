
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* atom_card_info; TYPE_2__* atom_context; } ;
struct amdgpu_device {int dev; TYPE_1__ mode_info; } ;
struct TYPE_4__ {struct TYPE_4__* iio; struct TYPE_4__* scratch; } ;


 int dev_attr_vbios_version ;
 int device_remove_file (int ,int *) ;
 int kfree (TYPE_2__*) ;

void amdgpu_atombios_fini(struct amdgpu_device *adev)
{
 if (adev->mode_info.atom_context) {
  kfree(adev->mode_info.atom_context->scratch);
  kfree(adev->mode_info.atom_context->iio);
 }
 kfree(adev->mode_info.atom_context);
 adev->mode_info.atom_context = ((void*)0);
 kfree(adev->mode_info.atom_card_info);
 adev->mode_info.atom_card_info = ((void*)0);
 device_remove_file(adev->dev, &dev_attr_vbios_version);
}
