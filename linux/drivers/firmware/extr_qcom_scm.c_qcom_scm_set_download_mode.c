
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; scalar_t__ dload_mode_addr; } ;


 int QCOM_SCM_SET_DLOAD_MODE ;
 int QCOM_SCM_SVC_BOOT ;
 int __qcom_scm_io_writel (int ,scalar_t__,int ) ;
 int __qcom_scm_is_call_available (int ,int ,int ) ;
 int __qcom_scm_set_dload_mode (int ,int) ;
 TYPE_1__* __scm ;
 int dev_err (int ,char*,...) ;

__attribute__((used)) static void qcom_scm_set_download_mode(bool enable)
{
 bool avail;
 int ret = 0;

 avail = __qcom_scm_is_call_available(__scm->dev,
          QCOM_SCM_SVC_BOOT,
          QCOM_SCM_SET_DLOAD_MODE);
 if (avail) {
  ret = __qcom_scm_set_dload_mode(__scm->dev, enable);
 } else if (__scm->dload_mode_addr) {
  ret = __qcom_scm_io_writel(__scm->dev, __scm->dload_mode_addr,
        enable ? QCOM_SCM_SET_DLOAD_MODE : 0);
 } else {
  dev_err(__scm->dev,
   "No available mechanism for setting download mode\n");
 }

 if (ret)
  dev_err(__scm->dev, "failed to set download mode: %d\n", ret);
}
