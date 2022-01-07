
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct firmware {int size; scalar_t__ data; } ;
typedef int drm_r128_private_t ;
typedef int __be32 ;


 int DRM_DEBUG (char*) ;
 int EINVAL ;
 int FIRMWARE_NAME ;
 scalar_t__ IS_ERR (struct platform_device*) ;
 int PTR_ERR (struct platform_device*) ;
 int R128_PM4_MICROCODE_ADDR ;
 int R128_PM4_MICROCODE_DATAH ;
 int R128_PM4_MICROCODE_DATAL ;
 int R128_WRITE (int ,int ) ;
 int be32_to_cpup (int const*) ;
 struct platform_device* platform_device_register_simple (char*,int ,int *,int ) ;
 int platform_device_unregister (struct platform_device*) ;
 int pr_err (char*,...) ;
 int r128_do_wait_for_idle (int *) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int *) ;

__attribute__((used)) static int r128_cce_load_microcode(drm_r128_private_t *dev_priv)
{
 struct platform_device *pdev;
 const struct firmware *fw;
 const __be32 *fw_data;
 int rc, i;

 DRM_DEBUG("\n");

 pdev = platform_device_register_simple("r128_cce", 0, ((void*)0), 0);
 if (IS_ERR(pdev)) {
  pr_err("r128_cce: Failed to register firmware\n");
  return PTR_ERR(pdev);
 }
 rc = request_firmware(&fw, FIRMWARE_NAME, &pdev->dev);
 platform_device_unregister(pdev);
 if (rc) {
  pr_err("r128_cce: Failed to load firmware \"%s\"\n",
         FIRMWARE_NAME);
  return rc;
 }

 if (fw->size != 256 * 8) {
  pr_err("r128_cce: Bogus length %zu in firmware \"%s\"\n",
         fw->size, FIRMWARE_NAME);
  rc = -EINVAL;
  goto out_release;
 }

 r128_do_wait_for_idle(dev_priv);

 fw_data = (const __be32 *)fw->data;
 R128_WRITE(R128_PM4_MICROCODE_ADDR, 0);
 for (i = 0; i < 256; i++) {
  R128_WRITE(R128_PM4_MICROCODE_DATAH,
      be32_to_cpup(&fw_data[i * 2]));
  R128_WRITE(R128_PM4_MICROCODE_DATAL,
      be32_to_cpup(&fw_data[i * 2 + 1]));
 }

out_release:
 release_firmware(fw);
 return rc;
}
