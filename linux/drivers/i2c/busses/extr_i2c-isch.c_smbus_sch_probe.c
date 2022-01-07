
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dev; int name; } ;
struct TYPE_4__ {int * parent; } ;
struct TYPE_5__ {int name; TYPE_1__ dev; } ;


 int EBUSY ;
 int IORESOURCE_IO ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,int) ;
 int devm_request_region (int *,int,int ,int ) ;
 int i2c_add_adapter (TYPE_2__*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;
 TYPE_2__ sch_adapter ;
 int sch_smba ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int smbus_sch_probe(struct platform_device *dev)
{
 struct resource *res;
 int retval;

 res = platform_get_resource(dev, IORESOURCE_IO, 0);
 if (!res)
  return -EBUSY;

 if (!devm_request_region(&dev->dev, res->start, resource_size(res),
     dev->name)) {
  dev_err(&dev->dev, "SMBus region 0x%x already in use!\n",
   sch_smba);
  return -EBUSY;
 }

 sch_smba = res->start;

 dev_dbg(&dev->dev, "SMBA = 0x%X\n", sch_smba);


 sch_adapter.dev.parent = &dev->dev;

 snprintf(sch_adapter.name, sizeof(sch_adapter.name),
  "SMBus SCH adapter at %04x", sch_smba);

 retval = i2c_add_adapter(&sch_adapter);
 if (retval)
  sch_smba = 0;

 return retval;
}
