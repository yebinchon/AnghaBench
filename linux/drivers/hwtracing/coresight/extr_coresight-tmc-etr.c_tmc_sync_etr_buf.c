
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct tmc_drvdata {TYPE_1__* csdev; scalar_t__ base; struct etr_buf* etr_buf; } ;
struct etr_buf {int full; TYPE_2__* ops; scalar_t__ len; } ;
struct TYPE_4__ {int (* sync ) (struct etr_buf*,int ,int ) ;} ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ TMC_STS ;
 int TMC_STS_FULL ;
 int TMC_STS_MEMERR ;
 int WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int dev_dbg (int *,char*) ;
 int readl_relaxed (scalar_t__) ;
 int stub1 (struct etr_buf*,int ,int ) ;
 int tmc_read_rrp (struct tmc_drvdata*) ;
 int tmc_read_rwp (struct tmc_drvdata*) ;

__attribute__((used)) static void tmc_sync_etr_buf(struct tmc_drvdata *drvdata)
{
 struct etr_buf *etr_buf = drvdata->etr_buf;
 u64 rrp, rwp;
 u32 status;

 rrp = tmc_read_rrp(drvdata);
 rwp = tmc_read_rwp(drvdata);
 status = readl_relaxed(drvdata->base + TMC_STS);





 if (WARN_ON_ONCE(status & TMC_STS_MEMERR)) {
  dev_dbg(&drvdata->csdev->dev,
   "tmc memory error detected, truncating buffer\n");
  etr_buf->len = 0;
  etr_buf->full = 0;
  return;
 }

 etr_buf->full = status & TMC_STS_FULL;

 WARN_ON(!etr_buf->ops || !etr_buf->ops->sync);

 etr_buf->ops->sync(etr_buf, rrp, rwp);
}
