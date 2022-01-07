
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_device {int dummy; } ;


 int DSS_CONTROL ;
 int REG_FLD_MOD (struct dss_device*,int ,int,int,int) ;

void dss_set_dac_pwrdn_bgz(struct dss_device *dss, bool enable)
{

 REG_FLD_MOD(dss, DSS_CONTROL, enable, 5, 5);
}
