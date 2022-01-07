
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cec_adapter {int rc; TYPE_1__* ops; scalar_t__ kthread_config; scalar_t__ kthread; } ;
struct TYPE_2__ {int (* adap_free ) (struct cec_adapter*) ;} ;


 scalar_t__ IS_ERR_OR_NULL (struct cec_adapter*) ;
 int kfree (struct cec_adapter*) ;
 int kthread_stop (scalar_t__) ;
 int rc_free_device (int ) ;
 int stub1 (struct cec_adapter*) ;

void cec_delete_adapter(struct cec_adapter *adap)
{
 if (IS_ERR_OR_NULL(adap))
  return;
 kthread_stop(adap->kthread);
 if (adap->kthread_config)
  kthread_stop(adap->kthread_config);
 if (adap->ops->adap_free)
  adap->ops->adap_free(adap);



 kfree(adap);
}
