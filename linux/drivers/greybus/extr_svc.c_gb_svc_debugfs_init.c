
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_svc {int dev; int debugfs_dentry; } ;


 int debugfs_create_dir (int ,int ) ;
 int dev_name (int *) ;
 int gb_debugfs_get () ;
 int gb_svc_pwrmon_debugfs_init (struct gb_svc*) ;

__attribute__((used)) static void gb_svc_debugfs_init(struct gb_svc *svc)
{
 svc->debugfs_dentry = debugfs_create_dir(dev_name(&svc->dev),
       gb_debugfs_get());
 gb_svc_pwrmon_debugfs_init(svc);
}
