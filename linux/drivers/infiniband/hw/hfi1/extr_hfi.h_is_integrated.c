
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfi1_devdata {TYPE_1__* pcidev; } ;
struct TYPE_2__ {scalar_t__ device; } ;


 scalar_t__ PCI_DEVICE_ID_INTEL1 ;

__attribute__((used)) static inline bool is_integrated(struct hfi1_devdata *dd)
{
 return dd->pcidev->device == PCI_DEVICE_ID_INTEL1;
}
