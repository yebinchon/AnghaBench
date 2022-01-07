
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct i2c_adapter {int name; int * algo; TYPE_1__ dev; int class; int owner; } ;
struct zx_hdmi_i2c {struct i2c_adapter adap; int lock; } ;
struct zx_hdmi {int dev; struct zx_hdmi_i2c* ddc; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_CLASS_DDC ;
 int THIS_MODULE ;
 struct zx_hdmi_i2c* devm_kzalloc (int ,int,int ) ;
 int i2c_add_adapter (struct i2c_adapter*) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct zx_hdmi*) ;
 int mutex_init (int *) ;
 int snprintf (int ,int,char*) ;
 int zx_hdmi_algorithm ;

__attribute__((used)) static int zx_hdmi_ddc_register(struct zx_hdmi *hdmi)
{
 struct i2c_adapter *adap;
 struct zx_hdmi_i2c *ddc;
 int ret;

 ddc = devm_kzalloc(hdmi->dev, sizeof(*ddc), GFP_KERNEL);
 if (!ddc)
  return -ENOMEM;

 hdmi->ddc = ddc;
 mutex_init(&ddc->lock);

 adap = &ddc->adap;
 adap->owner = THIS_MODULE;
 adap->class = I2C_CLASS_DDC;
 adap->dev.parent = hdmi->dev;
 adap->algo = &zx_hdmi_algorithm;
 snprintf(adap->name, sizeof(adap->name), "zx hdmi i2c");

 ret = i2c_add_adapter(adap);
 if (ret) {
  DRM_DEV_ERROR(hdmi->dev, "failed to add I2C adapter: %d\n",
         ret);
  return ret;
 }

 i2c_set_adapdata(adap, hdmi);

 return 0;
}
