
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct device_node {int dummy; } ;
struct TYPE_7__ {struct device_node* node; } ;
typedef TYPE_2__ pmac_ide_hwif_t ;
struct TYPE_6__ {int parent; } ;
struct TYPE_8__ {TYPE_1__ gendev; } ;
typedef TYPE_3__ ide_hwif_t ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA40_SHORT ;
 int ATA_CBL_PATA80 ;
 TYPE_2__* dev_get_drvdata (int ) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 struct device_node* of_find_node_by_path (char*) ;
 char* of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static u8 pmac_ide_cable_detect(ide_hwif_t *hwif)
{
 pmac_ide_hwif_t *pmif = dev_get_drvdata(hwif->gendev.parent);
 struct device_node *np = pmif->node;
 const char *cable = of_get_property(np, "cable-type", ((void*)0));
 struct device_node *root = of_find_node_by_path("/");
 const char *model = of_get_property(root, "model", ((void*)0));

 of_node_put(root);

 if (cable && !strncmp(cable, "80-", 3)) {


  if (!strncmp(model, "PowerBook", 9))
   return ATA_CBL_PATA40_SHORT;
  else
   return ATA_CBL_PATA80;
 }






 if (of_device_is_compatible(np, "K2-UATA") ||
     of_device_is_compatible(np, "shasta-ata"))
  return ATA_CBL_PATA80;

 return ATA_CBL_PATA40;
}
