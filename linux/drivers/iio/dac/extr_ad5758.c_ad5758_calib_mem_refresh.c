
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad5758_state {TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int AD5758_CAL_MEM_UNREFRESHED_MSK ;
 int AD5758_DIGITAL_DIAG_RESULTS ;
 int AD5758_KEY ;
 int AD5758_KEY_CODE_CALIB_MEM_REFRESH ;
 int ad5758_spi_reg_write (struct ad5758_state*,int ,int ) ;
 int ad5758_wait_for_task_complete (struct ad5758_state*,int ,int ) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int ad5758_calib_mem_refresh(struct ad5758_state *st)
{
 int ret;

 ret = ad5758_spi_reg_write(st, AD5758_KEY,
       AD5758_KEY_CODE_CALIB_MEM_REFRESH);
 if (ret < 0) {
  dev_err(&st->spi->dev,
   "Failed to initiate a calibration memory refresh\n");
  return ret;
 }


 return ad5758_wait_for_task_complete(st, AD5758_DIGITAL_DIAG_RESULTS,
          AD5758_CAL_MEM_UNREFRESHED_MSK);
}
