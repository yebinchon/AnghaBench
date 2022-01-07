
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk3399_dmcfreq {int dev; int devfreq; } ;
struct platform_device {int dev; } ;


 struct rk3399_dmcfreq* dev_get_drvdata (int *) ;
 int dev_pm_opp_of_remove_table (int ) ;
 int devm_devfreq_unregister_opp_notifier (int ,int ) ;

__attribute__((used)) static int rk3399_dmcfreq_remove(struct platform_device *pdev)
{
 struct rk3399_dmcfreq *dmcfreq = dev_get_drvdata(&pdev->dev);




 devm_devfreq_unregister_opp_notifier(dmcfreq->dev, dmcfreq->devfreq);
 dev_pm_opp_of_remove_table(dmcfreq->dev);

 return 0;
}
