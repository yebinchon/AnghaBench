
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int irq; } ;
struct oaktrail_hdmi_dev {struct hdmi_i2c_dev* i2c_dev; } ;
struct hdmi_i2c_dev {int i2c_lock; int complete; int status; TYPE_1__* adap; } ;
struct TYPE_4__ {int name; } ;


 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_STAT_INIT ;
 int IRQF_SHARED ;
 int i2c_add_numbered_adapter (TYPE_1__*) ;
 int i2c_set_adapdata (TYPE_1__*,struct oaktrail_hdmi_dev*) ;
 int init_completion (int *) ;
 int kfree (struct hdmi_i2c_dev*) ;
 struct hdmi_i2c_dev* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 TYPE_1__ oaktrail_hdmi_i2c_adapter ;
 int oaktrail_hdmi_i2c_gpio_fix () ;
 int oaktrail_hdmi_i2c_handler ;
 struct oaktrail_hdmi_dev* pci_get_drvdata (struct pci_dev*) ;
 int request_irq (int ,int ,int ,int ,struct oaktrail_hdmi_dev*) ;

int oaktrail_hdmi_i2c_init(struct pci_dev *dev)
{
 struct oaktrail_hdmi_dev *hdmi_dev;
 struct hdmi_i2c_dev *i2c_dev;
 int ret;

 hdmi_dev = pci_get_drvdata(dev);

 i2c_dev = kzalloc(sizeof(struct hdmi_i2c_dev), GFP_KERNEL);
 if (i2c_dev == ((void*)0)) {
  DRM_ERROR("Can't allocate interface\n");
  ret = -ENOMEM;
  goto exit;
 }

 i2c_dev->adap = &oaktrail_hdmi_i2c_adapter;
 i2c_dev->status = I2C_STAT_INIT;
 init_completion(&i2c_dev->complete);
 mutex_init(&i2c_dev->i2c_lock);
 i2c_set_adapdata(&oaktrail_hdmi_i2c_adapter, hdmi_dev);
 hdmi_dev->i2c_dev = i2c_dev;


 oaktrail_hdmi_i2c_gpio_fix();


 ret = request_irq(dev->irq, oaktrail_hdmi_i2c_handler, IRQF_SHARED,
     oaktrail_hdmi_i2c_adapter.name, hdmi_dev);
 if (ret) {
  DRM_ERROR("Failed to request IRQ for I2C controller\n");
  goto err;
 }


 ret = i2c_add_numbered_adapter(&oaktrail_hdmi_i2c_adapter);
 return ret;

err:
 kfree(i2c_dev);
exit:
 return ret;
}
