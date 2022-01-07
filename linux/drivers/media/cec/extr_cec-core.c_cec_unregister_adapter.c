
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_adapter {scalar_t__ notifier; int cec_dir; int * rc; } ;


 scalar_t__ IS_ERR_OR_NULL (struct cec_adapter*) ;
 int cec_devnode_unregister (struct cec_adapter*) ;
 int cec_notifier_unregister (scalar_t__) ;
 int debugfs_remove_recursive (int ) ;
 int rc_unregister_device (int *) ;

void cec_unregister_adapter(struct cec_adapter *adap)
{
 if (IS_ERR_OR_NULL(adap))
  return;






 debugfs_remove_recursive(adap->cec_dir);




 cec_devnode_unregister(adap);
}
