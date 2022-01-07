
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cmdq {int suspended; int clock; } ;


 int WARN_ON (int) ;
 scalar_t__ clk_prepare (int ) ;
 struct cmdq* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int cmdq_resume(struct device *dev)
{
 struct cmdq *cmdq = dev_get_drvdata(dev);

 WARN_ON(clk_prepare(cmdq->clock) < 0);
 cmdq->suspended = 0;
 return 0;
}
