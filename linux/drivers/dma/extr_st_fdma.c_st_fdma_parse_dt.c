
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_fdma_driverdata {char* name; int id; } ;
struct st_fdma_dev {int nr_channels; int fw_name; } ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int FW_NAME_SIZE ;
 int of_property_read_u32 (int ,char*,int *) ;
 int snprintf (int ,int ,char*,char*,int) ;

__attribute__((used)) static int st_fdma_parse_dt(struct platform_device *pdev,
   const struct st_fdma_driverdata *drvdata,
   struct st_fdma_dev *fdev)
{
 snprintf(fdev->fw_name, FW_NAME_SIZE, "fdma_%s_%d.elf",
  drvdata->name, drvdata->id);

 return of_property_read_u32(pdev->dev.of_node, "dma-channels",
        &fdev->nr_channels);
}
