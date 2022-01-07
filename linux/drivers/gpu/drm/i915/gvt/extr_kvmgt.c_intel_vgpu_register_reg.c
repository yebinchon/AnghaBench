
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vfio_region {unsigned int type; unsigned int subtype; size_t size; void* data; int flags; struct intel_vgpu_regops const* ops; } ;
struct intel_vgpu_regops {int dummy; } ;
struct TYPE_2__ {int num_regions; struct vfio_region* region; } ;
struct intel_vgpu {TYPE_1__ vdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct vfio_region* krealloc (struct vfio_region*,int,int ) ;

__attribute__((used)) static int intel_vgpu_register_reg(struct intel_vgpu *vgpu,
  unsigned int type, unsigned int subtype,
  const struct intel_vgpu_regops *ops,
  size_t size, u32 flags, void *data)
{
 struct vfio_region *region;

 region = krealloc(vgpu->vdev.region,
   (vgpu->vdev.num_regions + 1) * sizeof(*region),
   GFP_KERNEL);
 if (!region)
  return -ENOMEM;

 vgpu->vdev.region = region;
 vgpu->vdev.region[vgpu->vdev.num_regions].type = type;
 vgpu->vdev.region[vgpu->vdev.num_regions].subtype = subtype;
 vgpu->vdev.region[vgpu->vdev.num_regions].ops = ops;
 vgpu->vdev.region[vgpu->vdev.num_regions].size = size;
 vgpu->vdev.region[vgpu->vdev.num_regions].flags = flags;
 vgpu->vdev.region[vgpu->vdev.num_regions].data = data;
 vgpu->vdev.num_regions++;
 return 0;
}
