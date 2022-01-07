
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_region {int data; } ;
struct intel_vgpu {int dummy; } ;


 int kfree (int ) ;

__attribute__((used)) static void intel_vgpu_reg_release_edid(struct intel_vgpu *vgpu,
     struct vfio_region *region)
{
 kfree(region->data);
}
