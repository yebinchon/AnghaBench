
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rfbdev; } ;
struct amdgpu_device {TYPE_1__ mode_info; int ddev; } ;


 int amdgpu_fbdev_destroy (int ,int *) ;
 int kfree (int *) ;

void amdgpu_fbdev_fini(struct amdgpu_device *adev)
{
 if (!adev->mode_info.rfbdev)
  return;

 amdgpu_fbdev_destroy(adev->ddev, adev->mode_info.rfbdev);
 kfree(adev->mode_info.rfbdev);
 adev->mode_info.rfbdev = ((void*)0);
}
