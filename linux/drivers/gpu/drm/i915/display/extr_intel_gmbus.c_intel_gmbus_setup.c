
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_7__ {int * parent; } ;
struct TYPE_8__ {int retries; int * lock_ops; int * algo; TYPE_2__ dev; int name; int class; int owner; } ;
struct intel_gmbus {unsigned int reg0; int force_bit; TYPE_3__ adapter; struct drm_i915_private* dev_priv; } ;
struct TYPE_6__ {struct pci_dev* pdev; } ;
struct drm_i915_private {struct intel_gmbus* gmbus; int gmbus_wait_queue; int gmbus_mutex; int gpio_mmio_base; TYPE_1__ drm; } ;
struct TYPE_9__ {char* name; } ;


 unsigned int ARRAY_SIZE (struct intel_gmbus*) ;
 unsigned int GMBUS_RATE_100KHZ ;
 int HAS_DISPLAY (struct drm_i915_private*) ;
 int HAS_GMCH (struct drm_i915_private*) ;
 int I2C_CLASS_DDC ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_I830 (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int PCH_DISPLAY_BASE ;
 int THIS_MODULE ;
 int VLV_DISPLAY_BASE ;
 TYPE_5__* get_gmbus_pin (struct drm_i915_private*,unsigned int) ;
 int gmbus_algorithm ;
 int gmbus_lock_ops ;
 int i2c_add_adapter (TYPE_3__*) ;
 int i2c_del_adapter (TYPE_3__*) ;
 int init_waitqueue_head (int *) ;
 int intel_gmbus_is_valid_pin (struct drm_i915_private*,unsigned int) ;
 int intel_gmbus_reset (struct drm_i915_private*) ;
 int intel_gpio_setup (struct intel_gmbus*,unsigned int) ;
 int mutex_init (int *) ;
 int snprintf (int ,int,char*,char*) ;

int intel_gmbus_setup(struct drm_i915_private *dev_priv)
{
 struct pci_dev *pdev = dev_priv->drm.pdev;
 struct intel_gmbus *bus;
 unsigned int pin;
 int ret;

 if (!HAS_DISPLAY(dev_priv))
  return 0;

 if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
  dev_priv->gpio_mmio_base = VLV_DISPLAY_BASE;
 else if (!HAS_GMCH(dev_priv))




  dev_priv->gpio_mmio_base = PCH_DISPLAY_BASE;

 mutex_init(&dev_priv->gmbus_mutex);
 init_waitqueue_head(&dev_priv->gmbus_wait_queue);

 for (pin = 0; pin < ARRAY_SIZE(dev_priv->gmbus); pin++) {
  if (!intel_gmbus_is_valid_pin(dev_priv, pin))
   continue;

  bus = &dev_priv->gmbus[pin];

  bus->adapter.owner = THIS_MODULE;
  bus->adapter.class = I2C_CLASS_DDC;
  snprintf(bus->adapter.name,
    sizeof(bus->adapter.name),
    "i915 gmbus %s",
    get_gmbus_pin(dev_priv, pin)->name);

  bus->adapter.dev.parent = &pdev->dev;
  bus->dev_priv = dev_priv;

  bus->adapter.algo = &gmbus_algorithm;
  bus->adapter.lock_ops = &gmbus_lock_ops;





  bus->adapter.retries = 1;


  bus->reg0 = pin | GMBUS_RATE_100KHZ;


  if (IS_I830(dev_priv))
   bus->force_bit = 1;

  intel_gpio_setup(bus, pin);

  ret = i2c_add_adapter(&bus->adapter);
  if (ret)
   goto err;
 }

 intel_gmbus_reset(dev_priv);

 return 0;

err:
 while (pin--) {
  if (!intel_gmbus_is_valid_pin(dev_priv, pin))
   continue;

  bus = &dev_priv->gmbus[pin];
  i2c_del_adapter(&bus->adapter);
 }
 return ret;
}
