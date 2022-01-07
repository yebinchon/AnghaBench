
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amd_mp2_dev {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;

__attribute__((used)) static inline void amd_mp2_pm_runtime_put(struct amd_mp2_dev *mp2_dev)
{
 pm_runtime_mark_last_busy(&mp2_dev->pci_dev->dev);
 pm_runtime_put_autosuspend(&mp2_dev->pci_dev->dev);
}
