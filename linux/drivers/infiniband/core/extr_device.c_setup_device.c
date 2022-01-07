
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_udata {int inlen; int outlen; } ;
struct TYPE_2__ {int (* query_device ) (struct ib_device*,int *,struct ib_udata*) ;} ;
struct ib_device {int dev; int attrs; TYPE_1__ ops; } ;


 int dev_warn (int *,char*) ;
 int ib_device_check_mandatory (struct ib_device*) ;
 int memset (int *,int ,int) ;
 int setup_dma_device (struct ib_device*) ;
 int setup_port_data (struct ib_device*) ;
 int stub1 (struct ib_device*,int *,struct ib_udata*) ;

__attribute__((used)) static int setup_device(struct ib_device *device)
{
 struct ib_udata uhw = {.outlen = 0, .inlen = 0};
 int ret;

 setup_dma_device(device);
 ib_device_check_mandatory(device);

 ret = setup_port_data(device);
 if (ret) {
  dev_warn(&device->dev, "Couldn't create per-port data\n");
  return ret;
 }

 memset(&device->attrs, 0, sizeof(device->attrs));
 ret = device->ops.query_device(device, &device->attrs, &uhw);
 if (ret) {
  dev_warn(&device->dev,
    "Couldn't query the device attributes\n");
  return ret;
 }

 return 0;
}
