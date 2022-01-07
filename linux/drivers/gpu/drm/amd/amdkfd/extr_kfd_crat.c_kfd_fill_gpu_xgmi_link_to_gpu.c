
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct kfd_dev {int kgd; } ;
struct crat_subtype_iolink {int length; int flags; int num_hops_xgmi; void* proximity_domain_to; void* proximity_domain_from; int io_interface_type; int type; } ;


 int CRAT_IOLINK_FLAGS_BI_DIRECTIONAL ;
 int CRAT_IOLINK_TYPE_XGMI ;
 int CRAT_SUBTYPE_FLAGS_ENABLED ;
 int CRAT_SUBTYPE_IOLINK_AFFINITY ;
 int ENOMEM ;
 int amdgpu_amdkfd_get_xgmi_hops_count (int ,int ) ;
 int memset (void*,int ,int) ;

__attribute__((used)) static int kfd_fill_gpu_xgmi_link_to_gpu(int *avail_size,
   struct kfd_dev *kdev,
   struct kfd_dev *peer_kdev,
   struct crat_subtype_iolink *sub_type_hdr,
   uint32_t proximity_domain_from,
   uint32_t proximity_domain_to)
{
 *avail_size -= sizeof(struct crat_subtype_iolink);
 if (*avail_size < 0)
  return -ENOMEM;

 memset((void *)sub_type_hdr, 0, sizeof(struct crat_subtype_iolink));

 sub_type_hdr->type = CRAT_SUBTYPE_IOLINK_AFFINITY;
 sub_type_hdr->length = sizeof(struct crat_subtype_iolink);
 sub_type_hdr->flags |= CRAT_SUBTYPE_FLAGS_ENABLED |
          CRAT_IOLINK_FLAGS_BI_DIRECTIONAL;

 sub_type_hdr->io_interface_type = CRAT_IOLINK_TYPE_XGMI;
 sub_type_hdr->proximity_domain_from = proximity_domain_from;
 sub_type_hdr->proximity_domain_to = proximity_domain_to;
 sub_type_hdr->num_hops_xgmi =
  amdgpu_amdkfd_get_xgmi_hops_count(kdev->kgd, peer_kdev->kgd);
 return 0;
}
