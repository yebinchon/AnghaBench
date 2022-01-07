
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_kp {int input; int timer; int irq; } ;


 scalar_t__ OMAP1_MPUIO_BASE ;
 scalar_t__ OMAP_MPUIO_KBD_MASKIT ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct omap_kp*) ;
 int input_unregister_device (int ) ;
 int kfree (struct omap_kp*) ;
 int kp_tasklet ;
 int omap_writew (int,scalar_t__) ;
 struct omap_kp* platform_get_drvdata (struct platform_device*) ;
 int tasklet_disable (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int omap_kp_remove(struct platform_device *pdev)
{
 struct omap_kp *omap_kp = platform_get_drvdata(pdev);


 tasklet_disable(&kp_tasklet);
 omap_writew(1, OMAP1_MPUIO_BASE + OMAP_MPUIO_KBD_MASKIT);
 free_irq(omap_kp->irq, omap_kp);

 del_timer_sync(&omap_kp->timer);
 tasklet_kill(&kp_tasklet);


 input_unregister_device(omap_kp->input);

 kfree(omap_kp);

 return 0;
}
