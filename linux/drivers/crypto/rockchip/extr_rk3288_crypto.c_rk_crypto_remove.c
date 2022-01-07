
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_crypto_info {int queue_task; int done_task; } ;
struct platform_device {int dummy; } ;


 struct rk_crypto_info* platform_get_drvdata (struct platform_device*) ;
 int rk_crypto_unregister () ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int rk_crypto_remove(struct platform_device *pdev)
{
 struct rk_crypto_info *crypto_tmp = platform_get_drvdata(pdev);

 rk_crypto_unregister();
 tasklet_kill(&crypto_tmp->done_task);
 tasklet_kill(&crypto_tmp->queue_task);
 return 0;
}
