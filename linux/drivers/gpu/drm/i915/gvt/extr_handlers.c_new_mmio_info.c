
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct intel_gvt_mmio_info {int offset; int node; void* write; void* read; scalar_t__ device; scalar_t__ ro_mask; } ;
struct TYPE_2__ {int num_tracked_mmio; int mmio_info_table; int * mmio_attribute; } ;
struct intel_gvt {TYPE_1__ mmio; } ;
typedef void* gvt_mmio_func ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 int IS_ALIGNED (scalar_t__,int) ;
 int WARN (int,char*,int) ;
 scalar_t__ WARN_ON (int) ;
 struct intel_gvt_mmio_info* find_mmio_info (struct intel_gvt*,int) ;
 int hash_add (int ,int *,int) ;
 int intel_gvt_match_device (struct intel_gvt*,scalar_t__) ;
 void* intel_vgpu_default_mmio_read ;
 void* intel_vgpu_default_mmio_write ;
 int kfree (struct intel_gvt_mmio_info*) ;
 struct intel_gvt_mmio_info* kzalloc (int,int ) ;

__attribute__((used)) static int new_mmio_info(struct intel_gvt *gvt,
  u32 offset, u8 flags, u32 size,
  u32 addr_mask, u32 ro_mask, u32 device,
  gvt_mmio_func read, gvt_mmio_func write)
{
 struct intel_gvt_mmio_info *info, *p;
 u32 start, end, i;

 if (!intel_gvt_match_device(gvt, device))
  return 0;

 if (WARN_ON(!IS_ALIGNED(offset, 4)))
  return -EINVAL;

 start = offset;
 end = offset + size;

 for (i = start; i < end; i += 4) {
  info = kzalloc(sizeof(*info), GFP_KERNEL);
  if (!info)
   return -ENOMEM;

  info->offset = i;
  p = find_mmio_info(gvt, info->offset);
  if (p) {
   WARN(1, "dup mmio definition offset %x\n",
    info->offset);
   kfree(info);





   return -EEXIST;
  }

  info->ro_mask = ro_mask;
  info->device = device;
  info->read = read ? read : intel_vgpu_default_mmio_read;
  info->write = write ? write : intel_vgpu_default_mmio_write;
  gvt->mmio.mmio_attribute[info->offset / 4] = flags;
  INIT_HLIST_NODE(&info->node);
  hash_add(gvt->mmio.mmio_info_table, &info->node, info->offset);
  gvt->mmio.num_tracked_mmio++;
 }
 return 0;
}
