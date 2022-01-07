
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma3000_accl_data {int dev; } ;


 int CMA3000_READ (struct cma3000_accl_data*,int ,char*) ;
 int CMA3000_RSTR ;
 int CMA3000_SET (struct cma3000_accl_data*,int ,int,char*) ;
 int CMA3000_STATUS ;
 int CMA3000_STATUS_PERR ;
 int EIO ;
 int dev_err (int ,char*) ;
 int mdelay (int) ;

__attribute__((used)) static int cma3000_reset(struct cma3000_accl_data *data)
{
 int val;


 CMA3000_SET(data, CMA3000_RSTR, 0x02, "Reset");
 CMA3000_SET(data, CMA3000_RSTR, 0x0A, "Reset");
 CMA3000_SET(data, CMA3000_RSTR, 0x04, "Reset");


 mdelay(10);

 val = CMA3000_READ(data, CMA3000_STATUS, "Status");
 if (val < 0) {
  dev_err(data->dev, "Reset failed\n");
  return val;
 }

 if (val & CMA3000_STATUS_PERR) {
  dev_err(data->dev, "Parity Error\n");
  return -EIO;
 }

 return 0;
}
