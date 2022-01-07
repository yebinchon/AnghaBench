
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_domain_info {TYPE_2__* dev; int global; int link; } ;
struct TYPE_3__ {int * iommu; } ;
struct TYPE_4__ {TYPE_1__ archdata; } ;


 int assert_spin_locked (int *) ;
 int device_domain_lock ;
 int list_del (int *) ;

__attribute__((used)) static inline void unlink_domain_info(struct device_domain_info *info)
{
 assert_spin_locked(&device_domain_lock);
 list_del(&info->link);
 list_del(&info->global);
 if (info->dev)
  info->dev->archdata.iommu = ((void*)0);
}
