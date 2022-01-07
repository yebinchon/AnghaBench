
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_th_device {int dev; } ;
struct gth_device {int master_group; TYPE_1__* dev; int output_group; } ;
struct TYPE_2__ {int kobj; } ;


 struct gth_device* dev_get_drvdata (int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void intel_th_gth_remove(struct intel_th_device *thdev)
{
 struct gth_device *gth = dev_get_drvdata(&thdev->dev);

 sysfs_remove_group(&gth->dev->kobj, &gth->output_group);
 sysfs_remove_group(&gth->dev->kobj, &gth->master_group);
}
