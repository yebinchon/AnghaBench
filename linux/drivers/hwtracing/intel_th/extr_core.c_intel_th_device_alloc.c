
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dma_parms; int dma_mask; struct device* parent; int type; int * bus; } ;
struct intel_th_device {int id; unsigned int type; TYPE_2__ dev; int name; } ;
struct intel_th {int id; struct device* dev; TYPE_1__* hub; } ;
struct device {int coherent_dma_mask; int dma_parms; int dma_mask; } ;
struct TYPE_5__ {struct device dev; } ;


 int GFP_KERNEL ;
 unsigned int INTEL_TH_OUTPUT ;
 int dev_set_name (TYPE_2__*,char*,int ,char const*,...) ;
 int device_initialize (TYPE_2__*) ;
 int dma_set_coherent_mask (TYPE_2__*,int ) ;
 int intel_th_bus ;
 int * intel_th_device_type ;
 struct intel_th_device* kzalloc (scalar_t__,int ) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static struct intel_th_device *
intel_th_device_alloc(struct intel_th *th, unsigned int type, const char *name,
        int id)
{
 struct device *parent;
 struct intel_th_device *thdev;

 if (type == INTEL_TH_OUTPUT)
  parent = &th->hub->dev;
 else
  parent = th->dev;

 thdev = kzalloc(sizeof(*thdev) + strlen(name) + 1, GFP_KERNEL);
 if (!thdev)
  return ((void*)0);

 thdev->id = id;
 thdev->type = type;

 strcpy(thdev->name, name);
 device_initialize(&thdev->dev);
 thdev->dev.bus = &intel_th_bus;
 thdev->dev.type = intel_th_device_type[type];
 thdev->dev.parent = parent;
 thdev->dev.dma_mask = parent->dma_mask;
 thdev->dev.dma_parms = parent->dma_parms;
 dma_set_coherent_mask(&thdev->dev, parent->coherent_dma_mask);
 if (id >= 0)
  dev_set_name(&thdev->dev, "%d-%s%d", th->id, name, id);
 else
  dev_set_name(&thdev->dev, "%d-%s", th->id, name);

 return thdev;
}
