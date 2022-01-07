
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {struct etr_buf* sysfs_buf; struct etr_buf* etr_buf; } ;
struct etr_buf {int offset; scalar_t__ full; } ;


 scalar_t__ WARN_ON (int) ;
 int tmc_etr_buf_insert_barrier_packet (struct etr_buf*,int ) ;
 int tmc_etr_free_sysfs_buf (struct etr_buf*) ;
 int tmc_sync_etr_buf (struct tmc_drvdata*) ;

__attribute__((used)) static void tmc_etr_sync_sysfs_buf(struct tmc_drvdata *drvdata)
{
 struct etr_buf *etr_buf = drvdata->etr_buf;

 if (WARN_ON(drvdata->sysfs_buf != etr_buf)) {
  tmc_etr_free_sysfs_buf(drvdata->sysfs_buf);
  drvdata->sysfs_buf = ((void*)0);
 } else {
  tmc_sync_etr_buf(drvdata);




  if (etr_buf->full)
   tmc_etr_buf_insert_barrier_packet(etr_buf,
         etr_buf->offset);
 }
}
