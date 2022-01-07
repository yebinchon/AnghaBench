
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int dummy; } ;


 int nitrox_mbox_init (struct nitrox_device*) ;
 int nitrox_sriov_cleanup (struct nitrox_device*) ;
 int nitrox_sriov_register_interupts (struct nitrox_device*) ;

__attribute__((used)) static int nitrox_sriov_init(struct nitrox_device *ndev)
{
 int ret;


 ret = nitrox_sriov_register_interupts(ndev);
 if (ret)
  return ret;

 ret = nitrox_mbox_init(ndev);
 if (ret)
  goto sriov_init_fail;

 return 0;

sriov_init_fail:
 nitrox_sriov_cleanup(ndev);
 return ret;
}
