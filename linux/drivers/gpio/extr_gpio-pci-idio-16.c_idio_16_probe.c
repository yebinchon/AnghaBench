
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {int irq; struct device dev; } ;
struct TYPE_5__ {char* label; int base; int set_multiple; int set; int get_multiple; int get; int direction_output; int direction_input; int get_direction; int names; int ngpio; int owner; struct device* parent; } ;
struct idio_16_gpio {TYPE_2__ chip; TYPE_1__* reg; int lock; } ;
struct TYPE_4__ {int in0_7; int irq_ctl; int filter_ctl; } ;


 int BIT (size_t const) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IDIO_16_NGPIO ;
 int IRQF_SHARED ;
 int IRQ_TYPE_NONE ;
 int THIS_MODULE ;
 int dev_err (struct device* const,char*,int) ;
 int devm_gpiochip_add_data (struct device* const,TYPE_2__*,struct idio_16_gpio*) ;
 struct idio_16_gpio* devm_kzalloc (struct device* const,int,int ) ;
 int devm_request_irq (struct device* const,int ,int ,int ,char const* const,struct idio_16_gpio*) ;
 int gpiochip_irqchip_add (TYPE_2__*,int *,int ,int ,int ) ;
 int handle_edge_irq ;
 int idio_16_gpio_direction_input ;
 int idio_16_gpio_direction_output ;
 int idio_16_gpio_get ;
 int idio_16_gpio_get_direction ;
 int idio_16_gpio_get_multiple ;
 int idio_16_gpio_set ;
 int idio_16_gpio_set_multiple ;
 int idio_16_irq_handler ;
 int idio_16_irqchip ;
 int idio_16_names ;
 int iowrite8 (int ,int *) ;
 char* pci_name (struct pci_dev*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int pcim_iomap_regions (struct pci_dev*,int ,char const* const) ;
 TYPE_1__** pcim_iomap_table (struct pci_dev*) ;
 int raw_spin_lock_init (int *) ;

__attribute__((used)) static int idio_16_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 struct device *const dev = &pdev->dev;
 struct idio_16_gpio *idio16gpio;
 int err;
 const size_t pci_bar_index = 2;
 const char *const name = pci_name(pdev);

 idio16gpio = devm_kzalloc(dev, sizeof(*idio16gpio), GFP_KERNEL);
 if (!idio16gpio)
  return -ENOMEM;

 err = pcim_enable_device(pdev);
 if (err) {
  dev_err(dev, "Failed to enable PCI device (%d)\n", err);
  return err;
 }

 err = pcim_iomap_regions(pdev, BIT(pci_bar_index), name);
 if (err) {
  dev_err(dev, "Unable to map PCI I/O addresses (%d)\n", err);
  return err;
 }

 idio16gpio->reg = pcim_iomap_table(pdev)[pci_bar_index];


 iowrite8(0, &idio16gpio->reg->filter_ctl);

 idio16gpio->chip.label = name;
 idio16gpio->chip.parent = dev;
 idio16gpio->chip.owner = THIS_MODULE;
 idio16gpio->chip.base = -1;
 idio16gpio->chip.ngpio = IDIO_16_NGPIO;
 idio16gpio->chip.names = idio_16_names;
 idio16gpio->chip.get_direction = idio_16_gpio_get_direction;
 idio16gpio->chip.direction_input = idio_16_gpio_direction_input;
 idio16gpio->chip.direction_output = idio_16_gpio_direction_output;
 idio16gpio->chip.get = idio_16_gpio_get;
 idio16gpio->chip.get_multiple = idio_16_gpio_get_multiple;
 idio16gpio->chip.set = idio_16_gpio_set;
 idio16gpio->chip.set_multiple = idio_16_gpio_set_multiple;

 raw_spin_lock_init(&idio16gpio->lock);

 err = devm_gpiochip_add_data(dev, &idio16gpio->chip, idio16gpio);
 if (err) {
  dev_err(dev, "GPIO registering failed (%d)\n", err);
  return err;
 }


 iowrite8(0, &idio16gpio->reg->irq_ctl);
 iowrite8(0, &idio16gpio->reg->in0_7);

 err = gpiochip_irqchip_add(&idio16gpio->chip, &idio_16_irqchip, 0,
  handle_edge_irq, IRQ_TYPE_NONE);
 if (err) {
  dev_err(dev, "Could not add irqchip (%d)\n", err);
  return err;
 }

 err = devm_request_irq(dev, pdev->irq, idio_16_irq_handler, IRQF_SHARED,
  name, idio16gpio);
 if (err) {
  dev_err(dev, "IRQ handler registering failed (%d)\n", err);
  return err;
 }

 return 0;
}
