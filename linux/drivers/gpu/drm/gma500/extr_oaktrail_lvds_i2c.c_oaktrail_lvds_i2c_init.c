
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * parent; } ;
struct TYPE_9__ {TYPE_1__ dev; TYPE_3__* algo_data; int owner; int name; } ;
struct TYPE_8__ {int udelay; struct psb_intel_i2c_chan* data; int timeout; int getscl; int getsda; int (* setscl ) (struct psb_intel_i2c_chan*,int) ;int (* setsda ) (struct psb_intel_i2c_chan*,int) ;} ;
struct psb_intel_i2c_chan {TYPE_4__ adapter; TYPE_3__ algo; int reg; struct drm_device* drm_dev; } ;
struct gma_encoder {struct psb_intel_i2c_chan* ddc_bus; } ;
struct drm_psb_private {int lpc_gpio_base; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {TYPE_2__* pdev; struct drm_psb_private* dev_private; } ;
struct TYPE_7__ {int dev; } ;


 int GFP_KERNEL ;
 scalar_t__ I2C_NAME_SIZE ;
 int THIS_MODULE ;
 int get_clock ;
 int get_data ;
 scalar_t__ i2c_bit_add_bus (TYPE_4__*) ;
 int i2c_set_adapdata (TYPE_4__*,struct psb_intel_i2c_chan*) ;
 int kfree (struct psb_intel_i2c_chan*) ;
 struct psb_intel_i2c_chan* kzalloc (int,int ) ;
 int set_clock (struct psb_intel_i2c_chan*,int) ;
 int set_data (struct psb_intel_i2c_chan*,int) ;
 int strncpy (int ,char*,scalar_t__) ;
 struct gma_encoder* to_gma_encoder (struct drm_encoder*) ;
 int udelay (int) ;
 int usecs_to_jiffies (int) ;

void oaktrail_lvds_i2c_init(struct drm_encoder *encoder)
{
 struct drm_device *dev = encoder->dev;
 struct gma_encoder *gma_encoder = to_gma_encoder(encoder);
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct psb_intel_i2c_chan *chan;

 chan = kzalloc(sizeof(struct psb_intel_i2c_chan), GFP_KERNEL);
 if (!chan)
  return;

 chan->drm_dev = dev;
 chan->reg = dev_priv->lpc_gpio_base;
 strncpy(chan->adapter.name, "gma500 LPC", I2C_NAME_SIZE - 1);
 chan->adapter.owner = THIS_MODULE;
 chan->adapter.algo_data = &chan->algo;
 chan->adapter.dev.parent = &dev->pdev->dev;
 chan->algo.setsda = set_data;
 chan->algo.setscl = set_clock;
 chan->algo.getsda = get_data;
 chan->algo.getscl = get_clock;
 chan->algo.udelay = 100;
 chan->algo.timeout = usecs_to_jiffies(2200);
 chan->algo.data = chan;

 i2c_set_adapdata(&chan->adapter, chan);

 set_data(chan, 1);
 set_clock(chan, 1);
 udelay(50);

 if (i2c_bit_add_bus(&chan->adapter)) {
  kfree(chan);
  return;
 }

 gma_encoder->ddc_bus = chan;
}
