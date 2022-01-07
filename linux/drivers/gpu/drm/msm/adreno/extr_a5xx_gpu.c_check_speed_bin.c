
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvmem_cell {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct nvmem_cell*) ;
 int dev_pm_opp_set_supported_hw (struct device*,int*,int) ;
 struct nvmem_cell* nvmem_cell_get (struct device*,char*) ;
 int nvmem_cell_put (struct nvmem_cell*) ;
 scalar_t__ nvmem_cell_read (struct nvmem_cell*,int *) ;

__attribute__((used)) static void check_speed_bin(struct device *dev)
{
 struct nvmem_cell *cell;
 u32 bin, val;

 cell = nvmem_cell_get(dev, "speed_bin");


 if (IS_ERR(cell))
  return;

 bin = *((u32 *) nvmem_cell_read(cell, ((void*)0)));
 nvmem_cell_put(cell);

 val = (1 << bin);

 dev_pm_opp_set_supported_hw(dev, &val, 1);
}
