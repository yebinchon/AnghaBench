
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct cpm_i2c {int adap; } ;


 int cpm_i2c_shutdown (struct cpm_i2c*) ;
 int i2c_del_adapter (int *) ;
 int kfree (struct cpm_i2c*) ;
 struct cpm_i2c* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int cpm_i2c_remove(struct platform_device *ofdev)
{
 struct cpm_i2c *cpm = platform_get_drvdata(ofdev);

 i2c_del_adapter(&cpm->adap);

 cpm_i2c_shutdown(cpm);

 kfree(cpm);

 return 0;
}
