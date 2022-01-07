
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct kfd_local_mem_info {int vram_width; } ;
struct kfd_dev {int dummy; } ;
struct crat_subtype_memory {int length; int visibility_type; int width; int length_high; int length_low; int proximity_domain; int flags; int type; } ;


 int CRAT_SUBTYPE_FLAGS_ENABLED ;
 int CRAT_SUBTYPE_MEMORY_AFFINITY ;
 int ENOMEM ;
 int lower_32_bits (int ) ;
 int memset (void*,int ,int) ;
 int pr_debug (char*,int ,int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int kfd_fill_gpu_memory_affinity(int *avail_size,
  struct kfd_dev *kdev, uint8_t type, uint64_t size,
  struct crat_subtype_memory *sub_type_hdr,
  uint32_t proximity_domain,
  const struct kfd_local_mem_info *local_mem_info)
{
 *avail_size -= sizeof(struct crat_subtype_memory);
 if (*avail_size < 0)
  return -ENOMEM;

 memset((void *)sub_type_hdr, 0, sizeof(struct crat_subtype_memory));
 sub_type_hdr->type = CRAT_SUBTYPE_MEMORY_AFFINITY;
 sub_type_hdr->length = sizeof(struct crat_subtype_memory);
 sub_type_hdr->flags |= CRAT_SUBTYPE_FLAGS_ENABLED;

 sub_type_hdr->proximity_domain = proximity_domain;

 pr_debug("Fill gpu memory affinity - type 0x%x size 0x%llx\n",
   type, size);

 sub_type_hdr->length_low = lower_32_bits(size);
 sub_type_hdr->length_high = upper_32_bits(size);

 sub_type_hdr->width = local_mem_info->vram_width;
 sub_type_hdr->visibility_type = type;

 return 0;
}
