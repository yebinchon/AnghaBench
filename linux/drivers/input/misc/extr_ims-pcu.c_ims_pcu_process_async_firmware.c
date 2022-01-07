
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ims_pcu {int async_firmware_done; int cmd_mutex; int dev; } ;
struct firmware {int dummy; } ;


 int IMS_PCU_FIRMWARE_NAME ;
 int complete (int *) ;
 int dev_err (int ,char*,int ) ;
 int ihex_validate_fw (struct firmware const*) ;
 int ims_pcu_handle_firmware_update (struct ims_pcu*,struct firmware const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_firmware (struct firmware const*) ;

__attribute__((used)) static void ims_pcu_process_async_firmware(const struct firmware *fw,
        void *context)
{
 struct ims_pcu *pcu = context;
 int error;

 if (!fw) {
  dev_err(pcu->dev, "Failed to get firmware %s\n",
   IMS_PCU_FIRMWARE_NAME);
  goto out;
 }

 error = ihex_validate_fw(fw);
 if (error) {
  dev_err(pcu->dev, "Firmware %s is invalid\n",
   IMS_PCU_FIRMWARE_NAME);
  goto out;
 }

 mutex_lock(&pcu->cmd_mutex);
 ims_pcu_handle_firmware_update(pcu, fw);
 mutex_unlock(&pcu->cmd_mutex);

 release_firmware(fw);

out:
 complete(&pcu->async_firmware_done);
}
