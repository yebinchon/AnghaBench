
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_4__ {int of_node; } ;
struct platform_device {int id; TYPE_2__ dev; int name; } ;
struct TYPE_3__ {int of_node; TYPE_2__* parent; } ;
struct i2c_algo_iop3xx_data {int class; int ioaddr; struct i2c_algo_iop3xx_data* algo_data; int lock; int waitq; int * algo; int timeout; int nr; TYPE_1__ dev; int owner; int name; scalar_t__ id; void* gpio_sda; void* gpio_scl; } ;
struct i2c_adapter {int class; int ioaddr; struct i2c_adapter* algo_data; int lock; int waitq; int * algo; int timeout; int nr; TYPE_1__ dev; int owner; int name; scalar_t__ id; void* gpio_sda; void* gpio_scl; } ;


 int EBUSY ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int GPIOD_ASIS ;
 int HZ ;
 int I2C_CLASS_HWMON ;
 int I2C_CLASS_SPD ;
 int IOP3XX_I2C_IO_SIZE ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int THIS_MODULE ;
 void* devm_gpiod_get_optional (TYPE_2__*,char*,int ) ;
 int i2c_add_numbered_adapter (struct i2c_algo_iop3xx_data*) ;
 int i2c_id ;
 int init_waitqueue_head (int *) ;
 int iop3xx_i2c_algo ;
 int iop3xx_i2c_enable (struct i2c_algo_iop3xx_data*) ;
 int iop3xx_i2c_irq_handler ;
 int iop3xx_i2c_reset (struct i2c_algo_iop3xx_data*) ;
 int ioremap (int ,int ) ;
 int iounmap (int ) ;
 int kfree (struct i2c_algo_iop3xx_data*) ;
 struct i2c_algo_iop3xx_data* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct i2c_algo_iop3xx_data*) ;
 int release_mem_region (int ,int ) ;
 int request_irq (int,int ,int ,int ,struct i2c_algo_iop3xx_data*) ;
 int request_mem_region (int ,int ,int ) ;
 int spin_lock_init (int *) ;
 int strlen (int ) ;

__attribute__((used)) static int
iop3xx_i2c_probe(struct platform_device *pdev)
{
 struct resource *res;
 int ret, irq;
 struct i2c_adapter *new_adapter;
 struct i2c_algo_iop3xx_data *adapter_data;

 new_adapter = kzalloc(sizeof(struct i2c_adapter), GFP_KERNEL);
 if (!new_adapter) {
  ret = -ENOMEM;
  goto out;
 }

 adapter_data = kzalloc(sizeof(struct i2c_algo_iop3xx_data), GFP_KERNEL);
 if (!adapter_data) {
  ret = -ENOMEM;
  goto free_adapter;
 }

 adapter_data->gpio_scl = devm_gpiod_get_optional(&pdev->dev,
        "scl",
        GPIOD_ASIS);
 if (IS_ERR(adapter_data->gpio_scl))
  return PTR_ERR(adapter_data->gpio_scl);
 adapter_data->gpio_sda = devm_gpiod_get_optional(&pdev->dev,
        "sda",
        GPIOD_ASIS);
 if (IS_ERR(adapter_data->gpio_sda))
  return PTR_ERR(adapter_data->gpio_sda);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  ret = -ENODEV;
  goto free_both;
 }

 if (!request_mem_region(res->start, IOP3XX_I2C_IO_SIZE, pdev->name)) {
  ret = -EBUSY;
  goto free_both;
 }


 adapter_data->id = i2c_id++;

 adapter_data->ioaddr = ioremap(res->start, IOP3XX_I2C_IO_SIZE);
 if (!adapter_data->ioaddr) {
  ret = -ENOMEM;
  goto release_region;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  ret = -ENXIO;
  goto unmap;
 }
 ret = request_irq(irq, iop3xx_i2c_irq_handler, 0,
    pdev->name, adapter_data);

 if (ret) {
  ret = -EIO;
  goto unmap;
 }

 memcpy(new_adapter->name, pdev->name, strlen(pdev->name));
 new_adapter->owner = THIS_MODULE;
 new_adapter->class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
 new_adapter->dev.parent = &pdev->dev;
 new_adapter->dev.of_node = pdev->dev.of_node;
 new_adapter->nr = pdev->id;




 new_adapter->timeout = HZ;
 new_adapter->algo = &iop3xx_i2c_algo;

 init_waitqueue_head(&adapter_data->waitq);
 spin_lock_init(&adapter_data->lock);

 iop3xx_i2c_reset(adapter_data);
 iop3xx_i2c_enable(adapter_data);

 platform_set_drvdata(pdev, new_adapter);
 new_adapter->algo_data = adapter_data;

 i2c_add_numbered_adapter(new_adapter);

 return 0;

unmap:
 iounmap(adapter_data->ioaddr);

release_region:
 release_mem_region(res->start, IOP3XX_I2C_IO_SIZE);

free_both:
 kfree(adapter_data);

free_adapter:
 kfree(new_adapter);

out:
 return ret;
}
