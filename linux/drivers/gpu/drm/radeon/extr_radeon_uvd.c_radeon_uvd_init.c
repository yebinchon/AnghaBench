
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fw_header_present; unsigned long max_handles; scalar_t__* img_size; int ** filp; int * handles; int vcpu_bo; int cpu_addr; int gpu_addr; int idle_work; } ;
struct radeon_device {int family; TYPE_1__ uvd; int dev; TYPE_2__* uvd_fw; } ;
struct common_firmware_header {int ucode_version; } ;
struct TYPE_5__ {scalar_t__ size; scalar_t__ data; } ;
 int DRM_INFO (char*,unsigned int,unsigned int,unsigned int) ;
 int EINVAL ;
 char* FIRMWARE_BONAIRE ;
 char* FIRMWARE_BONAIRE_LEGACY ;
 char* FIRMWARE_CYPRESS ;
 char* FIRMWARE_R600 ;
 char* FIRMWARE_RS780 ;
 char* FIRMWARE_RV710 ;
 char* FIRMWARE_RV770 ;
 char* FIRMWARE_SUMO ;
 char* FIRMWARE_TAHITI ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int PAGE_SIZE ;
 unsigned long RADEON_DEFAULT_UVD_HANDLES ;
 int RADEON_GEM_DOMAIN_VRAM ;
 unsigned long RADEON_GPU_PAGE_ALIGN (scalar_t__) ;
 unsigned long RADEON_MAX_UVD_HANDLES ;
 unsigned long RADEON_UVD_HEAP_SIZE ;
 unsigned long RADEON_UVD_SESSION_SIZE ;
 unsigned long RADEON_UVD_STACK_SIZE ;
 int atomic_set (int *,int ) ;
 int dev_err (int ,char*,...) ;
 int le32_to_cpu (int ) ;
 int radeon_bo_create (struct radeon_device*,unsigned long,int ,int,int ,int ,int *,int *,int *) ;
 int radeon_bo_kmap (int ,int *) ;
 int radeon_bo_pin (int ,int ,int *) ;
 int radeon_bo_reserve (int ,int) ;
 int radeon_bo_unref (int *) ;
 int radeon_bo_unreserve (int ) ;
 int radeon_ucode_validate (TYPE_2__*) ;
 int radeon_uvd_idle_work_handler ;
 int request_firmware (TYPE_2__**,char const*,int ) ;

int radeon_uvd_init(struct radeon_device *rdev)
{
 unsigned long bo_size;
 const char *fw_name = ((void*)0), *legacy_fw_name = ((void*)0);
 int i, r;

 INIT_DELAYED_WORK(&rdev->uvd.idle_work, radeon_uvd_idle_work_handler);

 switch (rdev->family) {
 case 141:
 case 139:
 case 137:
 case 140:
 case 138:
  legacy_fw_name = FIRMWARE_R600;
  break;

 case 143:
 case 142:
  legacy_fw_name = FIRMWARE_RS780;
  break;

 case 133:
  legacy_fw_name = FIRMWARE_RV770;
  break;

 case 136:
 case 135:
 case 134:
  legacy_fw_name = FIRMWARE_RV710;
  break;

 case 154:
 case 152:
 case 151:
 case 144:
 case 155:
  legacy_fw_name = FIRMWARE_CYPRESS;
  break;

 case 132:
 case 131:
 case 146:
 case 156:
 case 159:
 case 129:
 case 157:
  legacy_fw_name = FIRMWARE_SUMO;
  break;

 case 130:
 case 128:
 case 145:
 case 160:
 case 147:
  legacy_fw_name = FIRMWARE_TAHITI;
  break;

 case 158:
 case 150:
 case 149:
 case 153:
 case 148:
  legacy_fw_name = FIRMWARE_BONAIRE_LEGACY;
  fw_name = FIRMWARE_BONAIRE;
  break;

 default:
  return -EINVAL;
 }

 rdev->uvd.fw_header_present = 0;
 rdev->uvd.max_handles = RADEON_DEFAULT_UVD_HANDLES;
 if (fw_name) {

  r = request_firmware(&rdev->uvd_fw, fw_name, rdev->dev);
  if (r) {
   dev_err(rdev->dev, "radeon_uvd: Can't load firmware \"%s\"\n",
    fw_name);
  } else {
   struct common_firmware_header *hdr = (void *)rdev->uvd_fw->data;
   unsigned version_major, version_minor, family_id;

   r = radeon_ucode_validate(rdev->uvd_fw);
   if (r)
    return r;

   rdev->uvd.fw_header_present = 1;

   family_id = le32_to_cpu(hdr->ucode_version) & 0xff;
   version_major = (le32_to_cpu(hdr->ucode_version) >> 24) & 0xff;
   version_minor = (le32_to_cpu(hdr->ucode_version) >> 8) & 0xff;
   DRM_INFO("Found UVD firmware Version: %hu.%hu Family ID: %hu\n",
     version_major, version_minor, family_id);





   if ((version_major >= 0x01) && (version_minor >= 0x37))
    rdev->uvd.max_handles = RADEON_MAX_UVD_HANDLES;
  }
 }






 if (!fw_name || r) {
  r = request_firmware(&rdev->uvd_fw, legacy_fw_name, rdev->dev);
  if (r) {
   dev_err(rdev->dev, "radeon_uvd: Can't load firmware \"%s\"\n",
    legacy_fw_name);
   return r;
  }
 }

 bo_size = RADEON_GPU_PAGE_ALIGN(rdev->uvd_fw->size + 8) +
    RADEON_UVD_STACK_SIZE + RADEON_UVD_HEAP_SIZE +
    RADEON_UVD_SESSION_SIZE * rdev->uvd.max_handles;
 r = radeon_bo_create(rdev, bo_size, PAGE_SIZE, 1,
        RADEON_GEM_DOMAIN_VRAM, 0, ((void*)0),
        ((void*)0), &rdev->uvd.vcpu_bo);
 if (r) {
  dev_err(rdev->dev, "(%d) failed to allocate UVD bo\n", r);
  return r;
 }

 r = radeon_bo_reserve(rdev->uvd.vcpu_bo, 0);
 if (r) {
  radeon_bo_unref(&rdev->uvd.vcpu_bo);
  dev_err(rdev->dev, "(%d) failed to reserve UVD bo\n", r);
  return r;
 }

 r = radeon_bo_pin(rdev->uvd.vcpu_bo, RADEON_GEM_DOMAIN_VRAM,
     &rdev->uvd.gpu_addr);
 if (r) {
  radeon_bo_unreserve(rdev->uvd.vcpu_bo);
  radeon_bo_unref(&rdev->uvd.vcpu_bo);
  dev_err(rdev->dev, "(%d) UVD bo pin failed\n", r);
  return r;
 }

 r = radeon_bo_kmap(rdev->uvd.vcpu_bo, &rdev->uvd.cpu_addr);
 if (r) {
  dev_err(rdev->dev, "(%d) UVD map failed\n", r);
  return r;
 }

 radeon_bo_unreserve(rdev->uvd.vcpu_bo);

 for (i = 0; i < rdev->uvd.max_handles; ++i) {
  atomic_set(&rdev->uvd.handles[i], 0);
  rdev->uvd.filp[i] = ((void*)0);
  rdev->uvd.img_size[i] = 0;
 }

 return 0;
}
