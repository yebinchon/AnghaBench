
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stratix10_svc_controller {int node; scalar_t__ genpool; int * task; int svc_fifo; } ;
struct stratix10_svc {int stratix10_svc_rsu; } ;
struct platform_device {int dev; } ;


 struct stratix10_svc* dev_get_drvdata (int *) ;
 int gen_pool_destroy (scalar_t__) ;
 int kfifo_free (int *) ;
 int kthread_stop (int *) ;
 int list_del (int *) ;
 int platform_device_unregister (int ) ;
 struct stratix10_svc_controller* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int stratix10_svc_drv_remove(struct platform_device *pdev)
{
 struct stratix10_svc *svc = dev_get_drvdata(&pdev->dev);
 struct stratix10_svc_controller *ctrl = platform_get_drvdata(pdev);

 platform_device_unregister(svc->stratix10_svc_rsu);

 kfifo_free(&ctrl->svc_fifo);
 if (ctrl->task) {
  kthread_stop(ctrl->task);
  ctrl->task = ((void*)0);
 }
 if (ctrl->genpool)
  gen_pool_destroy(ctrl->genpool);
 list_del(&ctrl->node);

 return 0;
}
