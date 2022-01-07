
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct etm_drvdata {unsigned int base; TYPE_1__* csdev; scalar_t__ use_cp14; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,unsigned int) ;
 scalar_t__ etm_readl_cp14 (unsigned int,unsigned int*) ;
 unsigned int readl_relaxed (unsigned int) ;

__attribute__((used)) static inline unsigned int etm_readl(struct etm_drvdata *drvdata, u32 off)
{
 u32 val;

 if (drvdata->use_cp14) {
  if (etm_readl_cp14(off, &val)) {
   dev_err(&drvdata->csdev->dev,
    "invalid CP14 access to ETM reg: %#x", off);
  }
 } else {
  val = readl_relaxed(drvdata->base + off);
 }

 return val;
}
