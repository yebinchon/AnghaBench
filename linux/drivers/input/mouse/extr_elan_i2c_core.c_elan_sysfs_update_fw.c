
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct firmware {int* data; } ;
struct elan_tp_data {scalar_t__ fw_validpage_count; size_t fw_signature_address; int sysfs_mutex; int product_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int signature ;


 int EBADF ;
 int EINVAL ;
 int ENOMEM ;
 int ETP_FW_NAME ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*,...) ;
 struct elan_tp_data* dev_get_drvdata (struct device*) ;
 int dev_info (struct device*,char*,char*) ;
 int elan_update_firmware (struct elan_tp_data*,struct firmware const*) ;
 char* kasprintf (int ,int ,int ) ;
 int kfree (char*) ;
 scalar_t__ memcmp (int const*,int const*,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,struct device*) ;

__attribute__((used)) static ssize_t elan_sysfs_update_fw(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct elan_tp_data *data = dev_get_drvdata(dev);
 const struct firmware *fw;
 char *fw_name;
 int error;
 const u8 *fw_signature;
 static const u8 signature[] = {0xAA, 0x55, 0xCC, 0x33, 0xFF, 0xFF};

 if (data->fw_validpage_count == 0)
  return -EINVAL;


 fw_name = kasprintf(GFP_KERNEL, ETP_FW_NAME, data->product_id);
 if (!fw_name) {
  dev_err(dev, "failed to allocate memory for firmware name\n");
  return -ENOMEM;
 }

 dev_info(dev, "requesting fw '%s'\n", fw_name);
 error = request_firmware(&fw, fw_name, dev);
 kfree(fw_name);
 if (error) {
  dev_err(dev, "failed to request firmware: %d\n", error);
  return error;
 }


 fw_signature = &fw->data[data->fw_signature_address];
 if (memcmp(fw_signature, signature, sizeof(signature)) != 0) {
  dev_err(dev, "signature mismatch (expected %*ph, got %*ph)\n",
   (int)sizeof(signature), signature,
   (int)sizeof(signature), fw_signature);
  error = -EBADF;
  goto out_release_fw;
 }

 error = mutex_lock_interruptible(&data->sysfs_mutex);
 if (error)
  goto out_release_fw;

 error = elan_update_firmware(data, fw);

 mutex_unlock(&data->sysfs_mutex);

out_release_fw:
 release_firmware(fw);
 return error ?: count;
}
