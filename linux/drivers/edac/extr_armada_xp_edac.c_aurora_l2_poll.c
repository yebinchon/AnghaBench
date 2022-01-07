
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_ctl_info {struct aurora_l2_drvdata* pvt_info; } ;
struct aurora_l2_drvdata {int dummy; } ;


 int aurora_l2_check (struct edac_device_ctl_info*) ;
 int aurora_l2_inject (struct aurora_l2_drvdata*) ;

__attribute__((used)) static void aurora_l2_poll(struct edac_device_ctl_info *dci)
{




 aurora_l2_check(dci);



}
