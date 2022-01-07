
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sahara_dev {int clk_ahb; int clk_ipg; int kthread; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int * dev_ptr ;
 int kthread_stop (int ) ;
 struct sahara_dev* platform_get_drvdata (struct platform_device*) ;
 int sahara_unregister_algs (struct sahara_dev*) ;

__attribute__((used)) static int sahara_remove(struct platform_device *pdev)
{
 struct sahara_dev *dev = platform_get_drvdata(pdev);

 kthread_stop(dev->kthread);

 sahara_unregister_algs(dev);

 clk_disable_unprepare(dev->clk_ipg);
 clk_disable_unprepare(dev->clk_ahb);

 dev_ptr = ((void*)0);

 return 0;
}
