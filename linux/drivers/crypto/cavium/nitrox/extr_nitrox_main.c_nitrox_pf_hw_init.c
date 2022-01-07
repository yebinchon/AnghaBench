
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nitrox_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 int nitrox_bist_check (struct nitrox_device*) ;
 int nitrox_config_aqm_unit (struct nitrox_device*) ;
 int nitrox_config_bmi_unit (struct nitrox_device*) ;
 int nitrox_config_bmo_unit (struct nitrox_device*) ;
 int nitrox_config_efl_unit (struct nitrox_device*) ;
 int nitrox_config_emu_unit (struct nitrox_device*) ;
 int nitrox_config_lbc_unit (struct nitrox_device*) ;
 int nitrox_config_nps_core_unit (struct nitrox_device*) ;
 int nitrox_config_nps_pkt_unit (struct nitrox_device*) ;
 int nitrox_config_pom_unit (struct nitrox_device*) ;
 int nitrox_config_rand_unit (struct nitrox_device*) ;
 int nitrox_get_hwinfo (struct nitrox_device*) ;
 int nitrox_load_fw (struct nitrox_device*) ;

__attribute__((used)) static int nitrox_pf_hw_init(struct nitrox_device *ndev)
{
 int err;

 err = nitrox_bist_check(ndev);
 if (err) {
  dev_err(&ndev->pdev->dev, "BIST check failed\n");
  return err;
 }

 nitrox_get_hwinfo(ndev);

 nitrox_config_nps_core_unit(ndev);
 nitrox_config_aqm_unit(ndev);
 nitrox_config_nps_pkt_unit(ndev);
 nitrox_config_pom_unit(ndev);
 nitrox_config_efl_unit(ndev);

 nitrox_config_bmi_unit(ndev);
 nitrox_config_bmo_unit(ndev);

 nitrox_config_lbc_unit(ndev);
 nitrox_config_rand_unit(ndev);


 err = nitrox_load_fw(ndev);
 if (err)
  return err;

 nitrox_config_emu_unit(ndev);

 return 0;
}
