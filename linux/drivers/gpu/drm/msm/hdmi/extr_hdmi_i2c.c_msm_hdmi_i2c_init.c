
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * parent; } ;
struct i2c_adapter {int * algo; TYPE_1__ dev; int name; int class; int owner; } ;
struct hdmi_i2c_adapter {int ddc_event; struct hdmi* hdmi; struct i2c_adapter base; } ;
struct hdmi {TYPE_2__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 struct i2c_adapter* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int I2C_CLASS_DDC ;
 int THIS_MODULE ;
 int i2c_add_adapter (struct i2c_adapter*) ;
 int init_waitqueue_head (int *) ;
 struct hdmi_i2c_adapter* kzalloc (int,int ) ;
 int msm_hdmi_i2c_algorithm ;
 int msm_hdmi_i2c_destroy (struct i2c_adapter*) ;
 int snprintf (int ,int,char*) ;

struct i2c_adapter *msm_hdmi_i2c_init(struct hdmi *hdmi)
{
 struct hdmi_i2c_adapter *hdmi_i2c;
 struct i2c_adapter *i2c = ((void*)0);
 int ret;

 hdmi_i2c = kzalloc(sizeof(*hdmi_i2c), GFP_KERNEL);
 if (!hdmi_i2c) {
  ret = -ENOMEM;
  goto fail;
 }

 i2c = &hdmi_i2c->base;

 hdmi_i2c->hdmi = hdmi;
 init_waitqueue_head(&hdmi_i2c->ddc_event);


 i2c->owner = THIS_MODULE;
 i2c->class = I2C_CLASS_DDC;
 snprintf(i2c->name, sizeof(i2c->name), "msm hdmi i2c");
 i2c->dev.parent = &hdmi->pdev->dev;
 i2c->algo = &msm_hdmi_i2c_algorithm;

 ret = i2c_add_adapter(i2c);
 if (ret)
  goto fail;

 return i2c;

fail:
 if (i2c)
  msm_hdmi_i2c_destroy(i2c);
 return ERR_PTR(ret);
}
