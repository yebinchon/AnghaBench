
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coresight_device {int dev; int pdata; } ;


 int coresight_release_platform_data (int ) ;
 int coresight_remove_conns (struct coresight_device*) ;
 int device_unregister (int *) ;
 int etm_perf_del_symlink_sink (struct coresight_device*) ;

void coresight_unregister(struct coresight_device *csdev)
{
 etm_perf_del_symlink_sink(csdev);

 coresight_remove_conns(csdev);
 coresight_release_platform_data(csdev->pdata);
 device_unregister(&csdev->dev);
}
