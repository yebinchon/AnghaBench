
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_frontend {int list; } ;
struct device {int dummy; } ;


 struct sun4i_frontend* dev_get_drvdata (struct device*) ;
 int list_del (int *) ;
 int pm_runtime_force_suspend (struct device*) ;

__attribute__((used)) static void sun4i_frontend_unbind(struct device *dev, struct device *master,
       void *data)
{
 struct sun4i_frontend *frontend = dev_get_drvdata(dev);

 list_del(&frontend->list);
 pm_runtime_force_suspend(dev);
}
