
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct kfd_dev {TYPE_2__* pdev; } ;
struct crat_subtype_iolink {int length; scalar_t__ proximity_domain_to; int proximity_domain_from; int io_interface_type; int flags; int type; } ;
struct TYPE_3__ {scalar_t__ numa_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int CRAT_IOLINK_FLAGS_BI_DIRECTIONAL ;
 int CRAT_IOLINK_TYPE_PCIEXPRESS ;
 int CRAT_SUBTYPE_FLAGS_ENABLED ;
 int CRAT_SUBTYPE_IOLINK_AFFINITY ;
 int ENOMEM ;
 scalar_t__ NUMA_NO_NODE ;
 scalar_t__ kfd_dev_is_large_bar (struct kfd_dev*) ;
 int memset (void*,int ,int) ;

__attribute__((used)) static int kfd_fill_gpu_direct_io_link_to_cpu(int *avail_size,
   struct kfd_dev *kdev,
   struct crat_subtype_iolink *sub_type_hdr,
   uint32_t proximity_domain)
{
 *avail_size -= sizeof(struct crat_subtype_iolink);
 if (*avail_size < 0)
  return -ENOMEM;

 memset((void *)sub_type_hdr, 0, sizeof(struct crat_subtype_iolink));


 sub_type_hdr->type = CRAT_SUBTYPE_IOLINK_AFFINITY;
 sub_type_hdr->length = sizeof(struct crat_subtype_iolink);
 sub_type_hdr->flags |= CRAT_SUBTYPE_FLAGS_ENABLED;
 if (kfd_dev_is_large_bar(kdev))
  sub_type_hdr->flags |= CRAT_IOLINK_FLAGS_BI_DIRECTIONAL;




 sub_type_hdr->io_interface_type = CRAT_IOLINK_TYPE_PCIEXPRESS;
 sub_type_hdr->proximity_domain_from = proximity_domain;






 sub_type_hdr->proximity_domain_to = 0;

 return 0;
}
