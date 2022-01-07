
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct ihex_binrec {int data; int len; } ;
struct firmware {scalar_t__ data; } ;
struct TYPE_5__ {int chipset; unsigned long* warp_pipe_phys; TYPE_1__* warp; } ;
typedef TYPE_2__ drm_mga_private_t ;
struct TYPE_4__ {unsigned char* handle; unsigned long offset; unsigned int size; } ;


 int DRM_DEBUG (char*,unsigned long,...) ;
 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int ENOMEM ;
 char* FIRMWARE_G200 ;
 char* FIRMWARE_G400 ;
 scalar_t__ IS_ERR (struct platform_device*) ;



 int MGA_MAX_G200_PIPES ;
 int MGA_MAX_G400_PIPES ;
 unsigned int PAGE_ALIGN (unsigned int) ;
 int PTR_ERR (struct platform_device*) ;
 unsigned int WARP_UCODE_SIZE (unsigned int) ;
 unsigned int be16_to_cpu (int ) ;
 struct ihex_binrec* ihex_next_binrec (struct ihex_binrec const*) ;
 int memcpy (unsigned char*,int ,unsigned int) ;
 int memset (unsigned long*,int ,int) ;
 struct platform_device* platform_device_register_simple (char*,int ,int *,int ) ;
 int platform_device_unregister (struct platform_device*) ;
 int release_firmware (struct firmware const*) ;
 int request_ihex_firmware (struct firmware const**,char const*,int *) ;

int mga_warp_install_microcode(drm_mga_private_t *dev_priv)
{
 unsigned char *vcbase = dev_priv->warp->handle;
 unsigned long pcbase = dev_priv->warp->offset;
 const char *firmware_name;
 struct platform_device *pdev;
 const struct firmware *fw = ((void*)0);
 const struct ihex_binrec *rec;
 unsigned int size;
 int n_pipes, where;
 int rc = 0;

 switch (dev_priv->chipset) {
 case 129:
 case 128:
  firmware_name = FIRMWARE_G400;
  n_pipes = MGA_MAX_G400_PIPES;
  break;
 case 130:
  firmware_name = FIRMWARE_G200;
  n_pipes = MGA_MAX_G200_PIPES;
  break;
 default:
  return -EINVAL;
 }

 pdev = platform_device_register_simple("mga_warp", 0, ((void*)0), 0);
 if (IS_ERR(pdev)) {
  DRM_ERROR("mga: Failed to register microcode\n");
  return PTR_ERR(pdev);
 }
 rc = request_ihex_firmware(&fw, firmware_name, &pdev->dev);
 platform_device_unregister(pdev);
 if (rc) {
  DRM_ERROR("mga: Failed to load microcode \"%s\"\n",
     firmware_name);
  return rc;
 }

 size = 0;
 where = 0;
 for (rec = (const struct ihex_binrec *)fw->data;
      rec;
      rec = ihex_next_binrec(rec)) {
  size += WARP_UCODE_SIZE(be16_to_cpu(rec->len));
  where++;
 }

 if (where != n_pipes) {
  DRM_ERROR("mga: Invalid microcode \"%s\"\n", firmware_name);
  rc = -EINVAL;
  goto out;
 }
 size = PAGE_ALIGN(size);
 DRM_DEBUG("MGA ucode size = %d bytes\n", size);
 if (size > dev_priv->warp->size) {
  DRM_ERROR("microcode too large! (%u > %lu)\n",
     size, dev_priv->warp->size);
  rc = -ENOMEM;
  goto out;
 }

 memset(dev_priv->warp_pipe_phys, 0, sizeof(dev_priv->warp_pipe_phys));

 where = 0;
 for (rec = (const struct ihex_binrec *)fw->data;
      rec;
      rec = ihex_next_binrec(rec)) {
  unsigned int src_size, dst_size;

  DRM_DEBUG(" pcbase = 0x%08lx  vcbase = %p\n", pcbase, vcbase);
  dev_priv->warp_pipe_phys[where] = pcbase;
  src_size = be16_to_cpu(rec->len);
  dst_size = WARP_UCODE_SIZE(src_size);
  memcpy(vcbase, rec->data, src_size);
  pcbase += dst_size;
  vcbase += dst_size;
  where++;
 }

out:
 release_firmware(fw);
 return rc;
}
