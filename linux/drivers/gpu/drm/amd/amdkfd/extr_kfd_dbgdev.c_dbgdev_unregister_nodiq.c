
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_dbgdev {int dev; } ;


 int dbgdev_address_watch_disable_nodiq (int ) ;

__attribute__((used)) static int dbgdev_unregister_nodiq(struct kfd_dbgdev *dbgdev)
{

 dbgdev_address_watch_disable_nodiq(dbgdev->dev);
 return 0;
}
