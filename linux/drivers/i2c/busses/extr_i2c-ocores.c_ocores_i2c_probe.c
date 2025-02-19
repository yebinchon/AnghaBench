
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_15__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; int name; } ;
struct of_device_id {scalar_t__ data; } ;
struct ocores_i2c_platform_data {int reg_io_width; int bus_khz; int big_endian; int num_devices; scalar_t__ devices; int clock_khz; int reg_shift; } ;
struct TYPE_14__ {int of_node; TYPE_2__* parent; } ;
struct TYPE_17__ {TYPE_1__ dev; } ;
struct ocores_i2c {int reg_io_width; int bus_clock_khz; int clk; TYPE_4__ adap; int flags; int wait; int getreg; int setreg; int ip_clock_khz; int reg_shift; int iobase; int base; int process_lock; } ;
struct TYPE_16__ {scalar_t__ master_xfer; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int OCORES_FLAG_BROKEN_IRQ ;
 int PTR_ERR (int ) ;
 long TYPE_SIFIVE_REV0 ;
 int clk_disable_unprepare (int ) ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct ocores_i2c_platform_data* dev_get_platdata (TYPE_2__*) ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct ocores_i2c* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_request_any_context_irq (TYPE_2__*,int,int ,int ,int ,struct ocores_i2c*) ;
 int devm_request_region (TYPE_2__*,int ,int ,int ) ;
 int i2c_add_adapter (TYPE_4__*) ;
 int i2c_new_device (TYPE_4__*,scalar_t__) ;
 int i2c_set_adapdata (TYPE_4__*,struct ocores_i2c*) ;
 int init_waitqueue_head (int *) ;
 int oc_getreg_16 ;
 int oc_getreg_16be ;
 int oc_getreg_32 ;
 int oc_getreg_32be ;
 int oc_getreg_8 ;
 int oc_getreg_io_8 ;
 int oc_setreg_16 ;
 int oc_setreg_16be ;
 int oc_setreg_32 ;
 int oc_setreg_32be ;
 int oc_setreg_8 ;
 int oc_setreg_io_8 ;
 TYPE_4__ ocores_adapter ;
 TYPE_3__ ocores_algorithm ;
 int ocores_i2c_match ;
 int ocores_i2c_of_probe (struct platform_device*,struct ocores_i2c*) ;
 int ocores_init (TYPE_2__*,struct ocores_i2c*) ;
 int ocores_isr ;
 scalar_t__ ocores_xfer_polling ;
 int of_device_is_big_endian (int ) ;
 struct of_device_id* of_match_node (int ,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ocores_i2c*) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ocores_i2c_probe(struct platform_device *pdev)
{
 struct ocores_i2c *i2c;
 struct ocores_i2c_platform_data *pdata;
 const struct of_device_id *match;
 struct resource *res;
 int irq;
 int ret;
 int i;

 i2c = devm_kzalloc(&pdev->dev, sizeof(*i2c), GFP_KERNEL);
 if (!i2c)
  return -ENOMEM;

 spin_lock_init(&i2c->process_lock);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (res) {
  i2c->base = devm_ioremap_resource(&pdev->dev, res);
  if (IS_ERR(i2c->base))
   return PTR_ERR(i2c->base);
 } else {
  res = platform_get_resource(pdev, IORESOURCE_IO, 0);
  if (!res)
   return -EINVAL;
  i2c->iobase = res->start;
  if (!devm_request_region(&pdev->dev, res->start,
      resource_size(res),
      pdev->name)) {
   dev_err(&pdev->dev, "Can't get I/O resource.\n");
   return -EBUSY;
  }
  i2c->setreg = oc_setreg_io_8;
  i2c->getreg = oc_getreg_io_8;
 }

 pdata = dev_get_platdata(&pdev->dev);
 if (pdata) {
  i2c->reg_shift = pdata->reg_shift;
  i2c->reg_io_width = pdata->reg_io_width;
  i2c->ip_clock_khz = pdata->clock_khz;
  if (pdata->bus_khz)
   i2c->bus_clock_khz = pdata->bus_khz;
  else
   i2c->bus_clock_khz = 100;
 } else {
  ret = ocores_i2c_of_probe(pdev, i2c);
  if (ret)
   return ret;
 }

 if (i2c->reg_io_width == 0)
  i2c->reg_io_width = 1;

 if (!i2c->setreg || !i2c->getreg) {
  bool be = pdata ? pdata->big_endian :
   of_device_is_big_endian(pdev->dev.of_node);

  switch (i2c->reg_io_width) {
  case 1:
   i2c->setreg = oc_setreg_8;
   i2c->getreg = oc_getreg_8;
   break;

  case 2:
   i2c->setreg = be ? oc_setreg_16be : oc_setreg_16;
   i2c->getreg = be ? oc_getreg_16be : oc_getreg_16;
   break;

  case 4:
   i2c->setreg = be ? oc_setreg_32be : oc_setreg_32;
   i2c->getreg = be ? oc_getreg_32be : oc_getreg_32;
   break;

  default:
   dev_err(&pdev->dev, "Unsupported I/O width (%d)\n",
    i2c->reg_io_width);
   ret = -EINVAL;
   goto err_clk;
  }
 }

 init_waitqueue_head(&i2c->wait);

 irq = platform_get_irq(pdev, 0);
 if (irq == -ENXIO) {
  ocores_algorithm.master_xfer = ocores_xfer_polling;





  match = of_match_node(ocores_i2c_match, pdev->dev.of_node);
  if (match && (long)match->data == TYPE_SIFIVE_REV0)
   i2c->flags |= OCORES_FLAG_BROKEN_IRQ;
 } else {
  if (irq < 0)
   return irq;
 }

 if (ocores_algorithm.master_xfer != ocores_xfer_polling) {
  ret = devm_request_any_context_irq(&pdev->dev, irq,
         ocores_isr, 0,
         pdev->name, i2c);
  if (ret) {
   dev_err(&pdev->dev, "Cannot claim IRQ\n");
   goto err_clk;
  }
 }

 ret = ocores_init(&pdev->dev, i2c);
 if (ret)
  goto err_clk;


 platform_set_drvdata(pdev, i2c);
 i2c->adap = ocores_adapter;
 i2c_set_adapdata(&i2c->adap, i2c);
 i2c->adap.dev.parent = &pdev->dev;
 i2c->adap.dev.of_node = pdev->dev.of_node;


 ret = i2c_add_adapter(&i2c->adap);
 if (ret)
  goto err_clk;


 if (pdata) {
  for (i = 0; i < pdata->num_devices; i++)
   i2c_new_device(&i2c->adap, pdata->devices + i);
 }

 return 0;

err_clk:
 clk_disable_unprepare(i2c->clk);
 return ret;
}
