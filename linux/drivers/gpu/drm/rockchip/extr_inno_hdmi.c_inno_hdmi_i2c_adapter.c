
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int of_node; TYPE_2__* parent; } ;
struct i2c_adapter {int name; int * algo; TYPE_1__ dev; int owner; int class; } ;
struct inno_hdmi_i2c {struct i2c_adapter adap; int cmp; int lock; } ;
struct inno_hdmi {TYPE_2__* dev; struct inno_hdmi_i2c* i2c; } ;
struct TYPE_7__ {int of_node; } ;


 int DRM_DEV_INFO (TYPE_2__*,char*,int ) ;
 int ENOMEM ;
 struct i2c_adapter* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int I2C_CLASS_DDC ;
 int THIS_MODULE ;
 int dev_warn (TYPE_2__*,char*,int ) ;
 int devm_kfree (TYPE_2__*,struct inno_hdmi_i2c*) ;
 struct inno_hdmi_i2c* devm_kzalloc (TYPE_2__*,int,int ) ;
 int i2c_add_adapter (struct i2c_adapter*) ;
 int i2c_set_adapdata (struct i2c_adapter*,struct inno_hdmi*) ;
 int init_completion (int *) ;
 int inno_hdmi_algorithm ;
 int mutex_init (int *) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static struct i2c_adapter *inno_hdmi_i2c_adapter(struct inno_hdmi *hdmi)
{
 struct i2c_adapter *adap;
 struct inno_hdmi_i2c *i2c;
 int ret;

 i2c = devm_kzalloc(hdmi->dev, sizeof(*i2c), GFP_KERNEL);
 if (!i2c)
  return ERR_PTR(-ENOMEM);

 mutex_init(&i2c->lock);
 init_completion(&i2c->cmp);

 adap = &i2c->adap;
 adap->class = I2C_CLASS_DDC;
 adap->owner = THIS_MODULE;
 adap->dev.parent = hdmi->dev;
 adap->dev.of_node = hdmi->dev->of_node;
 adap->algo = &inno_hdmi_algorithm;
 strlcpy(adap->name, "Inno HDMI", sizeof(adap->name));
 i2c_set_adapdata(adap, hdmi);

 ret = i2c_add_adapter(adap);
 if (ret) {
  dev_warn(hdmi->dev, "cannot add %s I2C adapter\n", adap->name);
  devm_kfree(hdmi->dev, i2c);
  return ERR_PTR(ret);
 }

 hdmi->i2c = i2c;

 DRM_DEV_INFO(hdmi->dev, "registered %s I2C bus driver\n", adap->name);

 return adap;
}
