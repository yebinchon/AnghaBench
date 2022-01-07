
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct i2c_adapter {int class; TYPE_1__ dev; int * algo; int owner; int name; } ;
struct scx200_acb_iface {int mutex; struct i2c_adapter adapter; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int I2C_CLASS_HWMON ;
 int I2C_CLASS_SPD ;
 int THIS_MODULE ;
 int i2c_set_adapdata (struct i2c_adapter*,struct scx200_acb_iface*) ;
 struct scx200_acb_iface* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int scx200_acb_algorithm ;
 int snprintf (int ,int,char*,char const*,int) ;

__attribute__((used)) static struct scx200_acb_iface *scx200_create_iface(const char *text,
  struct device *dev, int index)
{
 struct scx200_acb_iface *iface;
 struct i2c_adapter *adapter;

 iface = kzalloc(sizeof(*iface), GFP_KERNEL);
 if (!iface)
  return ((void*)0);

 adapter = &iface->adapter;
 i2c_set_adapdata(adapter, iface);
 snprintf(adapter->name, sizeof(adapter->name), "%s ACB%d", text, index);
 adapter->owner = THIS_MODULE;
 adapter->algo = &scx200_acb_algorithm;
 adapter->class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
 adapter->dev.parent = dev;

 mutex_init(&iface->mutex);

 return iface;
}
