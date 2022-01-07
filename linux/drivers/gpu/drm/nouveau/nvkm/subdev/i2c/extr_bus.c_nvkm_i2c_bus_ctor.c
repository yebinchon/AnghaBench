
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nvkm_i2c_pad {TYPE_2__* i2c; } ;
struct nvkm_i2c_bus_func {scalar_t__ drive_scl; } ;
struct TYPE_8__ {int parent; } ;
struct TYPE_9__ {int * algo; struct i2c_algo_bit_data* algo_data; TYPE_3__ dev; int owner; int name; } ;
struct nvkm_i2c_bus {int id; TYPE_4__ i2c; struct nvkm_i2c_bus_func const* func; int head; int mutex; struct nvkm_i2c_pad* pad; } ;
struct nvkm_device {int cfgopt; int dev; } ;
struct i2c_algo_bit_data {int udelay; int getsda; int getscl; int setsda; int setscl; int post_xfer; int pre_xfer; struct nvkm_i2c_bus* data; int timeout; } ;
struct TYPE_6__ {struct nvkm_device* device; } ;
struct TYPE_7__ {int bus; TYPE_1__ subdev; } ;


 int BUS_TRACE (struct nvkm_i2c_bus*,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 char* dev_name (int ) ;
 int i2c_add_adapter (TYPE_4__*) ;
 int i2c_bit_add_bus (TYPE_4__*) ;
 struct i2c_algo_bit_data* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int nvkm_boolopt (int ,char*,int const) ;
 int nvkm_i2c_bus_algo ;
 int nvkm_i2c_bus_getscl ;
 int nvkm_i2c_bus_getsda ;
 int nvkm_i2c_bus_post_xfer ;
 int nvkm_i2c_bus_pre_xfer ;
 int nvkm_i2c_bus_setscl ;
 int nvkm_i2c_bus_setsda ;
 int snprintf (int ,int,char*,char*,int) ;
 int usecs_to_jiffies (int) ;

int
nvkm_i2c_bus_ctor(const struct nvkm_i2c_bus_func *func,
    struct nvkm_i2c_pad *pad, int id,
    struct nvkm_i2c_bus *bus)
{
 struct nvkm_device *device = pad->i2c->subdev.device;
 struct i2c_algo_bit_data *bit;

 const bool internal = 0;



 int ret;

 bus->func = func;
 bus->pad = pad;
 bus->id = id;
 mutex_init(&bus->mutex);
 list_add_tail(&bus->head, &pad->i2c->bus);
 BUS_TRACE(bus, "ctor");

 snprintf(bus->i2c.name, sizeof(bus->i2c.name), "nvkm-%s-bus-%04x",
   dev_name(device->dev), id);
 bus->i2c.owner = THIS_MODULE;
 bus->i2c.dev.parent = device->dev;

 if ( bus->func->drive_scl &&
     !nvkm_boolopt(device->cfgopt, "NvI2C", internal)) {
  if (!(bit = kzalloc(sizeof(*bit), GFP_KERNEL)))
   return -ENOMEM;
  bit->udelay = 10;
  bit->timeout = usecs_to_jiffies(2200);
  bit->data = bus;
  bit->pre_xfer = nvkm_i2c_bus_pre_xfer;
  bit->post_xfer = nvkm_i2c_bus_post_xfer;
  bit->setscl = nvkm_i2c_bus_setscl;
  bit->setsda = nvkm_i2c_bus_setsda;
  bit->getscl = nvkm_i2c_bus_getscl;
  bit->getsda = nvkm_i2c_bus_getsda;
  bus->i2c.algo_data = bit;
  ret = i2c_bit_add_bus(&bus->i2c);
 } else {
  bus->i2c.algo = &nvkm_i2c_bus_algo;
  ret = i2c_add_adapter(&bus->i2c);
 }

 return ret;
}
