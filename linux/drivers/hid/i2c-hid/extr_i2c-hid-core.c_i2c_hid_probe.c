
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct i2c_hid_platform_data {TYPE_3__* supplies; int hid_descriptor_address; scalar_t__ post_power_delay_ms; } ;
struct TYPE_15__ {int wProductID; int wVendorID; int bcdVersion; } ;
struct i2c_hid {struct i2c_hid_platform_data pdata; int quirks; TYPE_2__ hdesc; struct hid_device* hid; int reset_lock; int wait; int wHIDDescRegister; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_17__ {scalar_t__ of_node; struct i2c_hid_platform_data* platform_data; } ;
struct i2c_client {int irq; char* name; TYPE_5__ dev; int addr; } ;
struct TYPE_14__ {TYPE_5__* parent; } ;
struct hid_device {void* product; void* vendor; int phys; int name; void* version; int bus; TYPE_1__ dev; int * ll_driver; struct i2c_client* driver_data; } ;
typedef int __u16 ;
struct TYPE_16__ {char* supply; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int BUS_I2C ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int HID_MIN_BUFFER_SIZE ;
 scalar_t__ IS_ERR (struct hid_device*) ;
 int PTR_ERR (struct hid_device*) ;
 int cpu_to_le16 (int ) ;
 int dbg_hid (char*,int ) ;
 int dev_dbg (TYPE_5__*,char*,int) ;
 int dev_err (TYPE_5__*,char*) ;
 int dev_name (TYPE_5__*) ;
 int device_enable_async_suspend (TYPE_5__*) ;
 struct i2c_hid* devm_kzalloc (TYPE_5__*,int,int ) ;
 int devm_regulator_bulk_get (TYPE_5__*,int ,TYPE_3__*) ;
 int free_irq (int,struct i2c_hid*) ;
 int hid_add_device (struct hid_device*) ;
 struct hid_device* hid_allocate_device () ;
 int hid_destroy_device (struct hid_device*) ;
 int hid_err (struct i2c_client*,char*,int) ;
 int i2c_hid_acpi_fix_up_power (TYPE_5__*) ;
 int i2c_hid_acpi_pdata (struct i2c_client*,struct i2c_hid_platform_data*) ;
 int i2c_hid_alloc_buffers (struct i2c_hid*,int ) ;
 int i2c_hid_fetch_hid_descriptor (struct i2c_hid*) ;
 int i2c_hid_free_buffers (struct i2c_hid*) ;
 int i2c_hid_fwnode_probe (struct i2c_client*,struct i2c_hid_platform_data*) ;
 int i2c_hid_init_irq (struct i2c_client*) ;
 int i2c_hid_ll_driver ;
 int i2c_hid_lookup_quirk (void*,void*) ;
 int i2c_hid_of_probe (struct i2c_client*,struct i2c_hid_platform_data*) ;
 int i2c_set_clientdata (struct i2c_client*,struct i2c_hid*) ;
 int i2c_smbus_read_byte (struct i2c_client*) ;
 int init_waitqueue_head (int *) ;
 void* le16_to_cpu (int ) ;
 int msleep (scalar_t__) ;
 int mutex_init (int *) ;
 int regulator_bulk_disable (int ,TYPE_3__*) ;
 int regulator_bulk_enable (int ,TYPE_3__*) ;
 int snprintf (int ,int,char*,char*,void*,void*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int i2c_hid_probe(struct i2c_client *client,
    const struct i2c_device_id *dev_id)
{
 int ret;
 struct i2c_hid *ihid;
 struct hid_device *hid;
 __u16 hidRegister;
 struct i2c_hid_platform_data *platform_data = client->dev.platform_data;

 dbg_hid("HID probe called for i2c 0x%02x\n", client->addr);

 if (!client->irq) {
  dev_err(&client->dev,
   "HID over i2c has not been provided an Int IRQ\n");
  return -EINVAL;
 }

 if (client->irq < 0) {
  if (client->irq != -EPROBE_DEFER)
   dev_err(&client->dev,
    "HID over i2c doesn't have a valid IRQ\n");
  return client->irq;
 }

 ihid = devm_kzalloc(&client->dev, sizeof(*ihid), GFP_KERNEL);
 if (!ihid)
  return -ENOMEM;

 if (client->dev.of_node) {
  ret = i2c_hid_of_probe(client, &ihid->pdata);
  if (ret)
   return ret;
 } else if (!platform_data) {
  ret = i2c_hid_acpi_pdata(client, &ihid->pdata);
  if (ret)
   return ret;
 } else {
  ihid->pdata = *platform_data;
 }


 i2c_hid_fwnode_probe(client, &ihid->pdata);

 ihid->pdata.supplies[0].supply = "vdd";
 ihid->pdata.supplies[1].supply = "vddl";

 ret = devm_regulator_bulk_get(&client->dev,
          ARRAY_SIZE(ihid->pdata.supplies),
          ihid->pdata.supplies);
 if (ret)
  return ret;

 ret = regulator_bulk_enable(ARRAY_SIZE(ihid->pdata.supplies),
        ihid->pdata.supplies);
 if (ret < 0)
  return ret;

 if (ihid->pdata.post_power_delay_ms)
  msleep(ihid->pdata.post_power_delay_ms);

 i2c_set_clientdata(client, ihid);

 ihid->client = client;

 hidRegister = ihid->pdata.hid_descriptor_address;
 ihid->wHIDDescRegister = cpu_to_le16(hidRegister);

 init_waitqueue_head(&ihid->wait);
 mutex_init(&ihid->reset_lock);




 ret = i2c_hid_alloc_buffers(ihid, HID_MIN_BUFFER_SIZE);
 if (ret < 0)
  goto err_regulator;

 i2c_hid_acpi_fix_up_power(&client->dev);

 device_enable_async_suspend(&client->dev);


 ret = i2c_smbus_read_byte(client);
 if (ret < 0) {
  dev_dbg(&client->dev, "nothing at this address: %d\n", ret);
  ret = -ENXIO;
  goto err_regulator;
 }

 ret = i2c_hid_fetch_hid_descriptor(ihid);
 if (ret < 0)
  goto err_regulator;

 ret = i2c_hid_init_irq(client);
 if (ret < 0)
  goto err_regulator;

 hid = hid_allocate_device();
 if (IS_ERR(hid)) {
  ret = PTR_ERR(hid);
  goto err_irq;
 }

 ihid->hid = hid;

 hid->driver_data = client;
 hid->ll_driver = &i2c_hid_ll_driver;
 hid->dev.parent = &client->dev;
 hid->bus = BUS_I2C;
 hid->version = le16_to_cpu(ihid->hdesc.bcdVersion);
 hid->vendor = le16_to_cpu(ihid->hdesc.wVendorID);
 hid->product = le16_to_cpu(ihid->hdesc.wProductID);

 snprintf(hid->name, sizeof(hid->name), "%s %04hX:%04hX",
   client->name, hid->vendor, hid->product);
 strlcpy(hid->phys, dev_name(&client->dev), sizeof(hid->phys));

 ihid->quirks = i2c_hid_lookup_quirk(hid->vendor, hid->product);

 ret = hid_add_device(hid);
 if (ret) {
  if (ret != -ENODEV)
   hid_err(client, "can't add hid device: %d\n", ret);
  goto err_mem_free;
 }

 return 0;

err_mem_free:
 hid_destroy_device(hid);

err_irq:
 free_irq(client->irq, ihid);

err_regulator:
 regulator_bulk_disable(ARRAY_SIZE(ihid->pdata.supplies),
          ihid->pdata.supplies);
 i2c_hid_free_buffers(ihid);
 return ret;
}
