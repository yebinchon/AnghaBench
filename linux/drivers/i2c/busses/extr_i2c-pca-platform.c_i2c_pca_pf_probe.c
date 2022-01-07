
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct resource {int flags; scalar_t__ start; } ;
struct TYPE_14__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; int name; int id; } ;
struct TYPE_11__ {struct device_node* of_node; TYPE_4__* parent; } ;
struct TYPE_13__ {int timeout; TYPE_1__ dev; TYPE_2__* algo_data; int name; int owner; int nr; } ;
struct TYPE_12__ {int i2c_clock; int read_byte; int write_byte; int reset_chip; int wait_for_completion; struct i2c_pca_pf_data* data; } ;
struct i2c_pca_pf_data {int irq; TYPE_3__ adap; TYPE_2__ algo_data; scalar_t__ gpio; int io_size; scalar_t__ io_base; int wait; scalar_t__ reg_base; } ;
struct i2c_pca9564_pf_platform_data {int i2c_clock_speed; int timeout; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 int HZ ;
 int IORESOURCE_MEM ;



 int IORESOURCE_MEM_TYPE_MASK ;
 int IRQF_TRIGGER_FALLING ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int THIS_MODULE ;
 struct i2c_pca9564_pf_platform_data* dev_get_platdata (TYPE_4__*) ;
 int dev_info (TYPE_4__*,char*) ;
 int device_property_read_u32 (TYPE_4__*,char*,int*) ;
 scalar_t__ devm_gpiod_get_optional (TYPE_4__*,char*,int ) ;
 scalar_t__ devm_ioremap_resource (TYPE_4__*,struct resource*) ;
 struct i2c_pca_pf_data* devm_kzalloc (TYPE_4__*,int,int ) ;
 int devm_request_irq (TYPE_4__*,int,int ,int ,int ,struct i2c_pca_pf_data*) ;
 int i2c_pca_add_numbered_bus (TYPE_3__*) ;
 int i2c_pca_pf_dummyreset ;
 int i2c_pca_pf_handler ;
 int i2c_pca_pf_readbyte16 ;
 int i2c_pca_pf_readbyte32 ;
 int i2c_pca_pf_readbyte8 ;
 int i2c_pca_pf_resetchip ;
 int i2c_pca_pf_waitforcompletion ;
 int i2c_pca_pf_writebyte16 ;
 int i2c_pca_pf_writebyte32 ;
 int i2c_pca_pf_writebyte8 ;
 int init_waitqueue_head (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct i2c_pca_pf_data*) ;
 int resource_size (struct resource*) ;
 int snprintf (int ,int,char*,unsigned long) ;

__attribute__((used)) static int i2c_pca_pf_probe(struct platform_device *pdev)
{
 struct i2c_pca_pf_data *i2c;
 struct resource *res;
 struct i2c_pca9564_pf_platform_data *platform_data =
    dev_get_platdata(&pdev->dev);
 struct device_node *np = pdev->dev.of_node;
 int ret = 0;
 int irq;

 irq = platform_get_irq(pdev, 0);

 if (irq < 0)
  irq = 0;

 i2c = devm_kzalloc(&pdev->dev, sizeof(*i2c), GFP_KERNEL);
 if (!i2c)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 i2c->reg_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(i2c->reg_base))
  return PTR_ERR(i2c->reg_base);


 init_waitqueue_head(&i2c->wait);

 i2c->io_base = res->start;
 i2c->io_size = resource_size(res);
 i2c->irq = irq;

 i2c->adap.nr = pdev->id;
 i2c->adap.owner = THIS_MODULE;
 snprintf(i2c->adap.name, sizeof(i2c->adap.name),
   "PCA9564/PCA9665 at 0x%08lx",
   (unsigned long) res->start);
 i2c->adap.algo_data = &i2c->algo_data;
 i2c->adap.dev.parent = &pdev->dev;
 i2c->adap.dev.of_node = np;

 i2c->gpio = devm_gpiod_get_optional(&pdev->dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(i2c->gpio))
  return PTR_ERR(i2c->gpio);

 i2c->adap.timeout = HZ;
 ret = device_property_read_u32(&pdev->dev, "clock-frequency",
           &i2c->algo_data.i2c_clock);
 if (ret)
  i2c->algo_data.i2c_clock = 59000;

 if (platform_data) {
  i2c->adap.timeout = platform_data->timeout;
  i2c->algo_data.i2c_clock = platform_data->i2c_clock_speed;
 }

 i2c->algo_data.data = i2c;
 i2c->algo_data.wait_for_completion = i2c_pca_pf_waitforcompletion;
 if (i2c->gpio)
  i2c->algo_data.reset_chip = i2c_pca_pf_resetchip;
 else
  i2c->algo_data.reset_chip = i2c_pca_pf_dummyreset;

 switch (res->flags & IORESOURCE_MEM_TYPE_MASK) {
 case 129:
  i2c->algo_data.write_byte = i2c_pca_pf_writebyte32;
  i2c->algo_data.read_byte = i2c_pca_pf_readbyte32;
  break;
 case 130:
  i2c->algo_data.write_byte = i2c_pca_pf_writebyte16;
  i2c->algo_data.read_byte = i2c_pca_pf_readbyte16;
  break;
 case 128:
 default:
  i2c->algo_data.write_byte = i2c_pca_pf_writebyte8;
  i2c->algo_data.read_byte = i2c_pca_pf_readbyte8;
  break;
 }

 if (irq) {
  ret = devm_request_irq(&pdev->dev, irq, i2c_pca_pf_handler,
   IRQF_TRIGGER_FALLING, pdev->name, i2c);
  if (ret)
   return ret;
 }

 ret = i2c_pca_add_numbered_bus(&i2c->adap);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, i2c);

 dev_info(&pdev->dev, "registered.\n");

 return 0;
}
