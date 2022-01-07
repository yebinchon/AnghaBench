
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dfl_fpga_cdev {TYPE_1__* region; } ;
struct TYPE_2__ {int dev; } ;


 int device_for_each_child (int *,int *,int ) ;
 int remove_feature_dev ;

__attribute__((used)) static void remove_feature_devs(struct dfl_fpga_cdev *cdev)
{
 device_for_each_child(&cdev->region->dev, ((void*)0), remove_feature_dev);
}
