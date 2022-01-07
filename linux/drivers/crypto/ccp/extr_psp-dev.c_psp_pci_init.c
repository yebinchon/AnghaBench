
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sp_device {int dev; TYPE_1__* psp_data; } ;
struct TYPE_2__ {scalar_t__ sev_state; int build; int api_minor; int api_major; int dev; } ;


 scalar_t__ SEV_STATE_UNINIT ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*,int ,int ,int ) ;
 TYPE_1__* psp_master ;
 int psp_probe_timeout ;
 int psp_timeout ;
 scalar_t__ sev_get_api_version () ;
 int sev_platform_init (int*) ;
 int sev_platform_shutdown (int *) ;
 scalar_t__ sev_update_firmware (int ) ;
 scalar_t__ sev_version_greater_or_equal (int ,int) ;
 struct sp_device* sp_get_psp_master_device () ;

void psp_pci_init(void)
{
 struct sp_device *sp;
 int error, rc;

 sp = sp_get_psp_master_device();
 if (!sp)
  return;

 psp_master = sp->psp_data;

 psp_timeout = psp_probe_timeout;

 if (sev_get_api_version())
  goto err;
 if (psp_master->sev_state != SEV_STATE_UNINIT) {
  sev_platform_shutdown(((void*)0));
  psp_master->sev_state = SEV_STATE_UNINIT;
 }

 if (sev_version_greater_or_equal(0, 15) &&
     sev_update_firmware(psp_master->dev) == 0)
  sev_get_api_version();


 rc = sev_platform_init(&error);
 if (rc) {
  dev_err(sp->dev, "SEV: failed to INIT error %#x\n", error);
  return;
 }

 dev_info(sp->dev, "SEV API:%d.%d build:%d\n", psp_master->api_major,
   psp_master->api_minor, psp_master->build);

 return;

err:
 psp_master = ((void*)0);
}
