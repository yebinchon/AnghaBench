
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct hidma_dev {int chid_attrs; TYPE_1__ ddev; } ;


 int ENOMEM ;
 int S_IRUGO ;
 int device_create_file (int ,int ) ;
 int hidma_create_sysfs_entry (struct hidma_dev*,char*,int ) ;

__attribute__((used)) static int hidma_sysfs_init(struct hidma_dev *dev)
{
 dev->chid_attrs = hidma_create_sysfs_entry(dev, "chid", S_IRUGO);
 if (!dev->chid_attrs)
  return -ENOMEM;

 return device_create_file(dev->ddev.dev, dev->chid_attrs);
}
