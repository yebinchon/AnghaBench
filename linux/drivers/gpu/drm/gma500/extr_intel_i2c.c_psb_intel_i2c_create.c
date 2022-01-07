
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int * parent; } ;
struct TYPE_9__ {TYPE_1__ dev; TYPE_3__* algo_data; int owner; int name; } ;
struct TYPE_8__ {int udelay; struct psb_intel_i2c_chan* data; int timeout; int getscl; int getsda; int (* setscl ) (struct psb_intel_i2c_chan*,int) ;int (* setsda ) (struct psb_intel_i2c_chan*,int) ;} ;
struct psb_intel_i2c_chan {TYPE_4__ adapter; TYPE_3__ algo; int reg; struct drm_device* drm_dev; } ;
struct drm_device {TYPE_2__* pdev; } ;
struct TYPE_7__ {int dev; } ;


 int GFP_KERNEL ;
 int I2C_NAME_SIZE ;
 int THIS_MODULE ;
 int get_clock ;
 int get_data ;
 scalar_t__ i2c_bit_add_bus (TYPE_4__*) ;
 int i2c_set_adapdata (TYPE_4__*,struct psb_intel_i2c_chan*) ;
 int kfree (struct psb_intel_i2c_chan*) ;
 struct psb_intel_i2c_chan* kzalloc (int,int ) ;
 int set_clock (struct psb_intel_i2c_chan*,int) ;
 int set_data (struct psb_intel_i2c_chan*,int) ;
 int snprintf (int ,int ,char*,char const*) ;
 int udelay (int) ;
 int usecs_to_jiffies (int) ;

struct psb_intel_i2c_chan *psb_intel_i2c_create(struct drm_device *dev,
     const u32 reg, const char *name)
{
 struct psb_intel_i2c_chan *chan;

 chan = kzalloc(sizeof(struct psb_intel_i2c_chan), GFP_KERNEL);
 if (!chan)
  goto out_free;

 chan->drm_dev = dev;
 chan->reg = reg;
 snprintf(chan->adapter.name, I2C_NAME_SIZE, "intel drm %s", name);
 chan->adapter.owner = THIS_MODULE;
 chan->adapter.algo_data = &chan->algo;
 chan->adapter.dev.parent = &dev->pdev->dev;
 chan->algo.setsda = set_data;
 chan->algo.setscl = set_clock;
 chan->algo.getsda = get_data;
 chan->algo.getscl = get_clock;
 chan->algo.udelay = 20;
 chan->algo.timeout = usecs_to_jiffies(2200);
 chan->algo.data = chan;

 i2c_set_adapdata(&chan->adapter, chan);

 if (i2c_bit_add_bus(&chan->adapter))
  goto out_free;


 set_data(chan, 1);
 set_clock(chan, 1);
 udelay(20);

 return chan;

out_free:
 kfree(chan);
 return ((void*)0);
}
