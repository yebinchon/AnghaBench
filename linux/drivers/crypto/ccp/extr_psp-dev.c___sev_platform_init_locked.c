
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psp_device {scalar_t__ sev_state; int dev; int init_cmd_buf; } ;


 int ENODEV ;
 int SEV_CMD_INIT ;
 scalar_t__ SEV_STATE_INIT ;
 int __sev_do_cmd_locked (int ,int *,int*) ;
 int dev_dbg (int ,char*) ;
 struct psp_device* psp_master ;

__attribute__((used)) static int __sev_platform_init_locked(int *error)
{
 struct psp_device *psp = psp_master;
 int rc = 0;

 if (!psp)
  return -ENODEV;

 if (psp->sev_state == SEV_STATE_INIT)
  return 0;

 rc = __sev_do_cmd_locked(SEV_CMD_INIT, &psp->init_cmd_buf, error);
 if (rc)
  return rc;

 psp->sev_state = SEV_STATE_INIT;
 dev_dbg(psp->dev, "SEV firmware initialized\n");

 return rc;
}
