
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dev; int id; } ;
struct TYPE_2__ {int * parent; } ;
struct i2c_adapter {int nr; TYPE_1__ dev; int class; int * algo; int name; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_CLASS_HWMON ;
 int IORESOURCE_MEM ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int i2c_add_numbered_adapter (struct i2c_adapter*) ;
 int kfree (struct i2c_adapter*) ;
 struct i2c_adapter* kzalloc (int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct i2c_adapter*) ;
 int puv3_i2c_algorithm ;
 int release_mem_region (int,int ) ;
 int request_mem_region (int,int ,char*) ;
 int resource_size (struct resource*) ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int puv3_i2c_probe(struct platform_device *pdev)
{
 struct i2c_adapter *adapter;
 struct resource *mem;
 int rc;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!mem)
  return -ENODEV;

 if (!request_mem_region(mem->start, resource_size(mem), "puv3_i2c"))
  return -EBUSY;

 adapter = kzalloc(sizeof(struct i2c_adapter), GFP_KERNEL);
 if (adapter == ((void*)0)) {
  dev_err(&pdev->dev, "can't allocate interface!\n");
  rc = -ENOMEM;
  goto fail_nomem;
 }
 snprintf(adapter->name, sizeof(adapter->name), "PUV3-I2C at 0x%08x",
   mem->start);
 adapter->algo = &puv3_i2c_algorithm;
 adapter->class = I2C_CLASS_HWMON;
 adapter->dev.parent = &pdev->dev;

 platform_set_drvdata(pdev, adapter);

 adapter->nr = pdev->id;
 rc = i2c_add_numbered_adapter(adapter);
 if (rc)
  goto fail_add_adapter;

 dev_info(&pdev->dev, "PKUnity v3 i2c bus adapter.\n");
 return 0;

fail_add_adapter:
 kfree(adapter);
fail_nomem:
 release_mem_region(mem->start, resource_size(mem));

 return rc;
}
