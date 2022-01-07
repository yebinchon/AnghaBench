
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdev_device {int dummy; } ;
struct intel_vgpu {int handle; } ;
struct TYPE_2__ {int (* vgpu_destroy ) (struct intel_vgpu*) ;} ;


 int EBUSY ;
 scalar_t__ handle_valid (int ) ;
 TYPE_1__* intel_gvt_ops ;
 struct intel_vgpu* mdev_get_drvdata (struct mdev_device*) ;
 int stub1 (struct intel_vgpu*) ;

__attribute__((used)) static int intel_vgpu_remove(struct mdev_device *mdev)
{
 struct intel_vgpu *vgpu = mdev_get_drvdata(mdev);

 if (handle_valid(vgpu->handle))
  return -EBUSY;

 intel_gvt_ops->vgpu_destroy(vgpu);
 return 0;
}
