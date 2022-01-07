
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; } ;
struct i2c_adapter {int dummy; } ;


 int IORESOURCE_MEM ;
 int i2c_del_adapter (struct i2c_adapter*) ;
 struct i2c_adapter* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int put_device (int *) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int puv3_i2c_remove(struct platform_device *pdev)
{
 struct i2c_adapter *adapter = platform_get_drvdata(pdev);
 struct resource *mem;

 i2c_del_adapter(adapter);

 put_device(&pdev->dev);

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 release_mem_region(mem->start, resource_size(mem));

 return 0;
}
