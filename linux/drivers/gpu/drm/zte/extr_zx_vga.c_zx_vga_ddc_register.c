
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct i2c_adapter {int name; int * algo; TYPE_1__ dev; int class; int owner; } ;
struct zx_vga_i2c {struct i2c_adapter adap; int lock; } ;
struct zx_vga {struct zx_vga_i2c* ddc; struct device* dev; } ;
struct device {int dummy; } ;


 int DRM_DEV_ERROR (struct device*,char*,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_CLASS_DDC ;
 int THIS_MODULE ;
 struct zx_vga_i2c* devm_kzalloc (struct device*,int,int ) ;
 int i2c_add_adapter (struct i2c_adapter*) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct zx_vga*) ;
 int mutex_init (int *) ;
 int snprintf (int ,int,char*) ;
 int zx_vga_algorithm ;

__attribute__((used)) static int zx_vga_ddc_register(struct zx_vga *vga)
{
 struct device *dev = vga->dev;
 struct i2c_adapter *adap;
 struct zx_vga_i2c *ddc;
 int ret;

 ddc = devm_kzalloc(dev, sizeof(*ddc), GFP_KERNEL);
 if (!ddc)
  return -ENOMEM;

 vga->ddc = ddc;
 mutex_init(&ddc->lock);

 adap = &ddc->adap;
 adap->owner = THIS_MODULE;
 adap->class = I2C_CLASS_DDC;
 adap->dev.parent = dev;
 adap->algo = &zx_vga_algorithm;
 snprintf(adap->name, sizeof(adap->name), "zx vga i2c");

 ret = i2c_add_adapter(adap);
 if (ret) {
  DRM_DEV_ERROR(dev, "failed to add I2C adapter: %d\n", ret);
  return ret;
 }

 i2c_set_adapdata(adap, vga);

 return 0;
}
