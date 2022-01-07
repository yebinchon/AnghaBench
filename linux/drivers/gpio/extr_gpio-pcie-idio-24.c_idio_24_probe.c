
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
struct idio_24_gpio {TYPE_2__ chip; TYPE_1__* reg; int lock; } ;
struct TYPE_4__ {int soft_reset; } ;


 int BIT (size_t const) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IDIO_24_NGPIO ;
 int IRQF_SHARED ;
 int IRQ_TYPE_NONE ;
 int THIS_MODULE ;
 int dev_err (struct device* const,char*,int) ;
 int devm_gpiochip_add_data (struct device* const,TYPE_2__*,struct idio_24_gpio*) ;
 struct idio_24_gpio* devm_kzalloc (struct device* const,int,int ) ;
 int devm_request_irq (struct device* const,int ,int ,int ,char const* const,struct idio_24_gpio*) ;
 int gpiochip_irqchip_add (TYPE_2__*,int *,int ,int ,int ) ;
 int handle_edge_irq ;
 int idio_24_gpio_direction_input ;
 int idio_24_gpio_direction_output ;
 int idio_24_gpio_get ;
 int idio_24_gpio_get_direction ;
 int idio_24_gpio_get_multiple ;
 int idio_24_gpio_set ;
 int idio_24_gpio_set_multiple ;
 int idio_24_irq_handler ;
 int idio_24_irqchip ;
 int idio_24_names ;
 int iowrite8 (int ,int *) ;
 char* pci_name (struct pci_dev*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int pcim_iomap_regions (struct pci_dev*,int ,char const* const) ;
 TYPE_1__** pcim_iomap_table (struct pci_dev*) ;
 int raw_spin_lock_init (int *) ;

__attribute__((used)) static int idio_24_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 struct device *const dev = &pdev->dev;
 struct idio_24_gpio *idio24gpio;
 int err;
 const size_t pci_bar_index = 2;
 const char *const name = pci_name(pdev);

 idio24gpio = devm_kzalloc(dev, sizeof(*idio24gpio), GFP_KERNEL);
 if (!idio24gpio)
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

 idio24gpio->reg = pcim_iomap_table(pdev)[pci_bar_index];

 idio24gpio->chip.label = name;
 idio24gpio->chip.parent = dev;
 idio24gpio->chip.owner = THIS_MODULE;
 idio24gpio->chip.base = -1;
 idio24gpio->chip.ngpio = IDIO_24_NGPIO;
 idio24gpio->chip.names = idio_24_names;
 idio24gpio->chip.get_direction = idio_24_gpio_get_direction;
 idio24gpio->chip.direction_input = idio_24_gpio_direction_input;
 idio24gpio->chip.direction_output = idio_24_gpio_direction_output;
 idio24gpio->chip.get = idio_24_gpio_get;
 idio24gpio->chip.get_multiple = idio_24_gpio_get_multiple;
 idio24gpio->chip.set = idio_24_gpio_set;
 idio24gpio->chip.set_multiple = idio_24_gpio_set_multiple;

 raw_spin_lock_init(&idio24gpio->lock);


 iowrite8(0, &idio24gpio->reg->soft_reset);

 err = devm_gpiochip_add_data(dev, &idio24gpio->chip, idio24gpio);
 if (err) {
  dev_err(dev, "GPIO registering failed (%d)\n", err);
  return err;
 }

 err = gpiochip_irqchip_add(&idio24gpio->chip, &idio_24_irqchip, 0,
  handle_edge_irq, IRQ_TYPE_NONE);
 if (err) {
  dev_err(dev, "Could not add irqchip (%d)\n", err);
  return err;
 }

 err = devm_request_irq(dev, pdev->irq, idio_24_irq_handler, IRQF_SHARED,
  name, idio24gpio);
 if (err) {
  dev_err(dev, "IRQ handler registering failed (%d)\n", err);
  return err;
 }

 return 0;
}
