
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pca954x {TYPE_2__* chip; struct i2c_client* client; scalar_t__ irq; int idle_state; scalar_t__ last_chan; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_device_identity {scalar_t__ manufacturer_id; scalar_t__ part_id; int die_revision; } ;
struct i2c_device_id {size_t driver_data; } ;
struct device {struct device_node* of_node; } ;
struct i2c_client {int name; int irq; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct gpio_desc {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {scalar_t__ manufacturer_id; scalar_t__ part_id; } ;
struct TYPE_5__ {int nchans; scalar_t__ muxtype; TYPE_1__ id; } ;


 int ENODEV ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GPIOD_OUT_HIGH ;
 scalar_t__ I2C_DEVICE_ID_NONE ;
 int I2C_FUNC_SMBUS_BYTE ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int MUX_IDLE_AS_IS ;
 int MUX_IDLE_DISCONNECT ;
 int PCA954X_MAX_NCHANS ;
 int PTR_ERR (struct gpio_desc*) ;
 TYPE_2__* chips ;
 int dev_attr_idle_state ;
 int dev_info (struct device*,char*,int,char*,int ) ;
 int dev_warn (struct device*,char*,...) ;
 int device_create_file (struct device*,int *) ;
 struct gpio_desc* devm_gpiod_get_optional (struct device*,char*,int ) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,int,char*,struct pca954x*) ;
 int gpiod_set_value_cansleep (struct gpio_desc*,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_get_device_id (struct i2c_client*,struct i2c_device_identity*) ;
 int i2c_mux_add_adapter (struct i2c_mux_core*,int ,int,int ) ;
 struct i2c_mux_core* i2c_mux_alloc (struct i2c_adapter*,struct device*,int ,int,int ,int ,int ) ;
 struct pca954x* i2c_mux_priv (struct i2c_mux_core*) ;
 int i2c_set_clientdata (struct i2c_client*,struct i2c_mux_core*) ;
 scalar_t__ i2c_smbus_write_byte (struct i2c_client*,int ) ;
 TYPE_2__* of_device_get_match_data (struct device*) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int pca954x_cleanup (struct i2c_mux_core*) ;
 int pca954x_deselect_mux ;
 int pca954x_irq_handler ;
 int pca954x_irq_setup (struct i2c_mux_core*) ;
 scalar_t__ pca954x_ismux ;
 int pca954x_select_chan ;
 int udelay (int) ;

__attribute__((used)) static int pca954x_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct i2c_adapter *adap = client->adapter;
 struct device *dev = &client->dev;
 struct device_node *np = dev->of_node;
 bool idle_disconnect_dt;
 struct gpio_desc *gpio;
 struct i2c_mux_core *muxc;
 struct pca954x *data;
 int num;
 int ret;

 if (!i2c_check_functionality(adap, I2C_FUNC_SMBUS_BYTE))
  return -ENODEV;

 muxc = i2c_mux_alloc(adap, dev, PCA954X_MAX_NCHANS, sizeof(*data), 0,
        pca954x_select_chan, pca954x_deselect_mux);
 if (!muxc)
  return -ENOMEM;
 data = i2c_mux_priv(muxc);

 i2c_set_clientdata(client, muxc);
 data->client = client;


 gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
 if (IS_ERR(gpio))
  return PTR_ERR(gpio);
 if (gpio) {
  udelay(1);
  gpiod_set_value_cansleep(gpio, 0);

  udelay(1);
 }

 data->chip = of_device_get_match_data(dev);
 if (!data->chip)
  data->chip = &chips[id->driver_data];

 if (data->chip->id.manufacturer_id != I2C_DEVICE_ID_NONE) {
  struct i2c_device_identity id;

  ret = i2c_get_device_id(client, &id);
  if (ret && ret != -EOPNOTSUPP)
   return ret;

  if (!ret &&
      (id.manufacturer_id != data->chip->id.manufacturer_id ||
       id.part_id != data->chip->id.part_id)) {
   dev_warn(dev, "unexpected device id %03x-%03x-%x\n",
     id.manufacturer_id, id.part_id,
     id.die_revision);
   return -ENODEV;
  }
 }





 if (i2c_smbus_write_byte(client, 0) < 0) {
  dev_warn(dev, "probe failed\n");
  return -ENODEV;
 }

 data->last_chan = 0;
 data->idle_state = MUX_IDLE_AS_IS;

 idle_disconnect_dt = np &&
  of_property_read_bool(np, "i2c-mux-idle-disconnect");
 if (idle_disconnect_dt)
  data->idle_state = MUX_IDLE_DISCONNECT;

 ret = pca954x_irq_setup(muxc);
 if (ret)
  goto fail_cleanup;


 for (num = 0; num < data->chip->nchans; num++) {
  ret = i2c_mux_add_adapter(muxc, 0, num, 0);
  if (ret)
   goto fail_cleanup;
 }

 if (data->irq) {
  ret = devm_request_threaded_irq(dev, data->client->irq,
      ((void*)0), pca954x_irq_handler,
      IRQF_ONESHOT | IRQF_SHARED,
      "pca954x", data);
  if (ret)
   goto fail_cleanup;
 }





 device_create_file(dev, &dev_attr_idle_state);

 dev_info(dev, "registered %d multiplexed busses for I2C %s %s\n",
   num, data->chip->muxtype == pca954x_ismux
    ? "mux" : "switch", client->name);

 return 0;

fail_cleanup:
 pca954x_cleanup(muxc);
 return ret;
}
