
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma3000_accl_data {int dummy; } ;


 int CMA3000_CTRL ;
 int CMA3000_SET (struct cma3000_accl_data*,int ,int ,char*) ;
 int CMA3000_SETDELAY ;
 int CMAMODE_POFF ;
 int msleep (int ) ;

__attribute__((used)) static int cma3000_poweroff(struct cma3000_accl_data *data)
{
 int ret;

 ret = CMA3000_SET(data, CMA3000_CTRL, CMAMODE_POFF, "Mode setting");
 msleep(CMA3000_SETDELAY);

 return ret;
}
