
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct simtec_i2c_data {TYPE_1__* ioarea; int reg; int adap; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int start; } ;


 int i2c_del_adapter (int *) ;
 int iounmap (int ) ;
 int kfree (struct simtec_i2c_data*) ;
 struct simtec_i2c_data* platform_get_drvdata (struct platform_device*) ;
 int release_mem_region (int ,int ) ;
 int resource_size (TYPE_1__*) ;

__attribute__((used)) static int simtec_i2c_remove(struct platform_device *dev)
{
 struct simtec_i2c_data *pd = platform_get_drvdata(dev);

 i2c_del_adapter(&pd->adap);

 iounmap(pd->reg);
 release_mem_region(pd->ioarea->start, resource_size(pd->ioarea));
 kfree(pd);

 return 0;
}
