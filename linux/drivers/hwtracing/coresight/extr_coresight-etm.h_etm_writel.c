
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct etm_drvdata {scalar_t__ base; TYPE_1__* csdev; scalar_t__ use_cp14; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,scalar_t__) ;
 scalar_t__ etm_writel_cp14 (scalar_t__,scalar_t__) ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void etm_writel(struct etm_drvdata *drvdata,
         u32 val, u32 off)
{
 if (drvdata->use_cp14) {
  if (etm_writel_cp14(off, val)) {
   dev_err(&drvdata->csdev->dev,
    "invalid CP14 access to ETM reg: %#x", off);
  }
 } else {
  writel_relaxed(val, drvdata->base + off);
 }
}
