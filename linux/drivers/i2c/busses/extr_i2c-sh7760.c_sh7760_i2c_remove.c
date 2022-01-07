
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct cami2c {struct cami2c* ioarea; int iobase; int irq; int adap; } ;


 int free_irq (int ,struct cami2c*) ;
 int i2c_del_adapter (int *) ;
 int iounmap (int ) ;
 int kfree (struct cami2c*) ;
 struct cami2c* platform_get_drvdata (struct platform_device*) ;
 int release_resource (struct cami2c*) ;

__attribute__((used)) static int sh7760_i2c_remove(struct platform_device *pdev)
{
 struct cami2c *id = platform_get_drvdata(pdev);

 i2c_del_adapter(&id->adap);
 free_irq(id->irq, id);
 iounmap(id->iobase);
 release_resource(id->ioarea);
 kfree(id->ioarea);
 kfree(id);

 return 0;
}
