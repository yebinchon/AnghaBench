
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ptr; } ;
struct amdgpu_device {TYPE_1__ doorbell; } ;


 int iounmap (int *) ;

__attribute__((used)) static void amdgpu_device_doorbell_fini(struct amdgpu_device *adev)
{
 iounmap(adev->doorbell.ptr);
 adev->doorbell.ptr = ((void*)0);
}
