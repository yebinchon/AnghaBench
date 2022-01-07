
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct hidma_dev {int chid_attrs; TYPE_1__ ddev; } ;


 int device_remove_file (int ,int ) ;

__attribute__((used)) static inline void hidma_sysfs_uninit(struct hidma_dev *dev)
{
 device_remove_file(dev->ddev.dev, dev->chid_attrs);
}
