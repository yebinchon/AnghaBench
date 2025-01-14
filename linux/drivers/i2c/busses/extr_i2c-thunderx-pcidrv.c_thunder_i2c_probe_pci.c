
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct device {int of_node; } ;
struct pci_dev {struct device dev; } ;
struct TYPE_7__ {int of_node; struct device* parent; } ;
struct TYPE_8__ {int retries; int name; TYPE_2__ dev; int * bus_recovery_info; int class; } ;
struct TYPE_6__ {int sw_twsi; int twsi_int; int sw_twsi_ext; } ;
struct octeon_i2c {int twsi_freq; int clk; int sys_freq; struct device* dev; TYPE_3__ adap; int hlc_int_disable; int hlc_int_enable; int int_disable; int int_enable; int queue; int twsi_base; TYPE_1__ roff; } ;


 int DRV_NAME ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_CLASS_HWMON ;
 int PCI_IRQ_MSIX ;
 int dev_info (struct device*,char*,...) ;
 char* dev_name (struct device*) ;
 int device_property_read_u32 (struct device*,char*,int*) ;
 struct octeon_i2c* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,int ,struct octeon_i2c*) ;
 int i2c_add_adapter (TYPE_3__*) ;
 int i2c_set_adapdata (TYPE_3__*,struct octeon_i2c*) ;
 int init_waitqueue_head (int *) ;
 int octeon_i2c_init_lowlevel (struct octeon_i2c*) ;
 int octeon_i2c_isr ;
 int octeon_i2c_recovery_info ;
 int octeon_i2c_set_clock (struct octeon_i2c*) ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int,int ) ;
 int pci_irq_vector (struct pci_dev*,int ) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct octeon_i2c*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int pcim_iomap (struct pci_dev*,int ,int ) ;
 int snprintf (int ,int,char*,char*) ;
 int thunder_i2c_clock_disable (struct device*,int ) ;
 int thunder_i2c_clock_enable (struct device*,struct octeon_i2c*) ;
 int thunder_i2c_hlc_int_disable ;
 int thunder_i2c_hlc_int_enable ;
 int thunder_i2c_int_disable ;
 int thunder_i2c_int_enable ;
 int thunder_i2c_smbus_setup (struct octeon_i2c*,int ) ;
 TYPE_3__ thunderx_i2c_ops ;

__attribute__((used)) static int thunder_i2c_probe_pci(struct pci_dev *pdev,
     const struct pci_device_id *ent)
{
 struct device *dev = &pdev->dev;
 struct octeon_i2c *i2c;
 int ret;

 i2c = devm_kzalloc(dev, sizeof(*i2c), GFP_KERNEL);
 if (!i2c)
  return -ENOMEM;

 i2c->roff.sw_twsi = 0x1000;
 i2c->roff.twsi_int = 0x1010;
 i2c->roff.sw_twsi_ext = 0x1018;

 i2c->dev = dev;
 pci_set_drvdata(pdev, i2c);
 ret = pcim_enable_device(pdev);
 if (ret)
  return ret;

 ret = pci_request_regions(pdev, DRV_NAME);
 if (ret)
  return ret;

 i2c->twsi_base = pcim_iomap(pdev, 0, pci_resource_len(pdev, 0));
 if (!i2c->twsi_base)
  return -EINVAL;

 thunder_i2c_clock_enable(dev, i2c);
 ret = device_property_read_u32(dev, "clock-frequency", &i2c->twsi_freq);
 if (ret)
  i2c->twsi_freq = 100000;

 init_waitqueue_head(&i2c->queue);

 i2c->int_enable = thunder_i2c_int_enable;
 i2c->int_disable = thunder_i2c_int_disable;
 i2c->hlc_int_enable = thunder_i2c_hlc_int_enable;
 i2c->hlc_int_disable = thunder_i2c_hlc_int_disable;

 ret = pci_alloc_irq_vectors(pdev, 1, 1, PCI_IRQ_MSIX);
 if (ret < 0)
  goto error;

 ret = devm_request_irq(dev, pci_irq_vector(pdev, 0), octeon_i2c_isr, 0,
          DRV_NAME, i2c);
 if (ret)
  goto error;

 ret = octeon_i2c_init_lowlevel(i2c);
 if (ret)
  goto error;

 octeon_i2c_set_clock(i2c);

 i2c->adap = thunderx_i2c_ops;
 i2c->adap.retries = 5;
 i2c->adap.class = I2C_CLASS_HWMON;
 i2c->adap.bus_recovery_info = &octeon_i2c_recovery_info;
 i2c->adap.dev.parent = dev;
 i2c->adap.dev.of_node = pdev->dev.of_node;
 snprintf(i2c->adap.name, sizeof(i2c->adap.name),
   "Cavium ThunderX i2c adapter at %s", dev_name(dev));
 i2c_set_adapdata(&i2c->adap, i2c);

 ret = i2c_add_adapter(&i2c->adap);
 if (ret)
  goto error;

 dev_info(i2c->dev, "Probed. Set system clock to %u\n", i2c->sys_freq);

 ret = thunder_i2c_smbus_setup(i2c, pdev->dev.of_node);
 if (ret)
  dev_info(dev, "SMBUS alert not active on this bus\n");

 return 0;

error:
 thunder_i2c_clock_disable(dev, i2c->clk);
 return ret;
}
