
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vprbrd_i2c {int i2c; } ;
struct platform_device {int dummy; } ;


 int i2c_del_adapter (int *) ;
 struct vprbrd_i2c* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int vprbrd_i2c_remove(struct platform_device *pdev)
{
 struct vprbrd_i2c *vb_i2c = platform_get_drvdata(pdev);

 i2c_del_adapter(&vb_i2c->i2c);

 return 0;
}
