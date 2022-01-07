
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pdev; } ;
struct ocrdma_dev {TYPE_2__ nic_info; } ;
struct TYPE_3__ {int device; } ;


 char* OC_NAME_SH ;
 char* OC_NAME_UNKNOWN ;



__attribute__((used)) static inline char *hca_name(struct ocrdma_dev *dev)
{
 switch (dev->nic_info.pdev->device) {
 case 129:
 case 128:
  return OC_NAME_SH;
 default:
  return OC_NAME_UNKNOWN;
 }
}
