
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_device {int dummy; } ;
struct intel_vgpu {int dummy; } ;


 int __intel_vgpu_release (struct intel_vgpu*) ;
 struct intel_vgpu* mdev_get_drvdata (struct mdev_device*) ;

__attribute__((used)) static void intel_vgpu_release(struct mdev_device *mdev)
{
 struct intel_vgpu *vgpu = mdev_get_drvdata(mdev);

 __intel_vgpu_release(vgpu);
}
