
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct common_firmware_header {int ucode_version; } ;
struct TYPE_5__ {unsigned int fw_version; int idle_mutex; int idle_work; int ** filp; int * handles; int cpu_addr; int gpu_addr; int vcpu_bo; TYPE_2__* fw; } ;
struct amdgpu_device {int asic_type; TYPE_1__ vce; int dev; } ;
struct TYPE_6__ {scalar_t__ data; } ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int AMDGPU_MAX_VCE_HANDLES ;
 int DRM_INFO (char*,unsigned int,unsigned int,unsigned int) ;
 int EINVAL ;
 char* FIRMWARE_BONAIRE ;
 char* FIRMWARE_CARRIZO ;
 char* FIRMWARE_FIJI ;
 char* FIRMWARE_HAWAII ;
 char* FIRMWARE_KABINI ;
 char* FIRMWARE_KAVERI ;
 char* FIRMWARE_MULLINS ;
 char* FIRMWARE_POLARIS10 ;
 char* FIRMWARE_POLARIS11 ;
 char* FIRMWARE_POLARIS12 ;
 char* FIRMWARE_STONEY ;
 char* FIRMWARE_TONGA ;
 char* FIRMWARE_VEGA10 ;
 char* FIRMWARE_VEGA12 ;
 char* FIRMWARE_VEGA20 ;
 char* FIRMWARE_VEGAM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int PAGE_SIZE ;
 int amdgpu_bo_create_kernel (struct amdgpu_device*,unsigned long,int ,int ,int *,int *,int *) ;
 int amdgpu_ucode_validate (TYPE_2__*) ;
 int amdgpu_vce_idle_work_handler ;
 int atomic_set (int *,int ) ;
 int dev_err (int ,char*,...) ;
 unsigned int le32_to_cpu (int ) ;
 int mutex_init (int *) ;
 int release_firmware (TYPE_2__*) ;
 int request_firmware (TYPE_2__**,char const*,int ) ;

int amdgpu_vce_sw_init(struct amdgpu_device *adev, unsigned long size)
{
 const char *fw_name;
 const struct common_firmware_header *hdr;
 unsigned ucode_version, version_major, version_minor, binary_id;
 int i, r;

 switch (adev->asic_type) {
 case 132:
  fw_name = FIRMWARE_TONGA;
  break;
 case 142:
  fw_name = FIRMWARE_CARRIZO;
  break;
 case 141:
  fw_name = FIRMWARE_FIJI;
  break;
 case 133:
  fw_name = FIRMWARE_STONEY;
  break;
 case 136:
  fw_name = FIRMWARE_POLARIS10;
  break;
 case 135:
  fw_name = FIRMWARE_POLARIS11;
  break;
 case 134:
  fw_name = FIRMWARE_POLARIS12;
  break;
 case 128:
  fw_name = FIRMWARE_VEGAM;
  break;
 case 131:
  fw_name = FIRMWARE_VEGA10;
  break;
 case 130:
  fw_name = FIRMWARE_VEGA12;
  break;
 case 129:
  fw_name = FIRMWARE_VEGA20;
  break;

 default:
  return -EINVAL;
 }

 r = request_firmware(&adev->vce.fw, fw_name, adev->dev);
 if (r) {
  dev_err(adev->dev, "amdgpu_vce: Can't load firmware \"%s\"\n",
   fw_name);
  return r;
 }

 r = amdgpu_ucode_validate(adev->vce.fw);
 if (r) {
  dev_err(adev->dev, "amdgpu_vce: Can't validate firmware \"%s\"\n",
   fw_name);
  release_firmware(adev->vce.fw);
  adev->vce.fw = ((void*)0);
  return r;
 }

 hdr = (const struct common_firmware_header *)adev->vce.fw->data;

 ucode_version = le32_to_cpu(hdr->ucode_version);
 version_major = (ucode_version >> 20) & 0xfff;
 version_minor = (ucode_version >> 8) & 0xfff;
 binary_id = ucode_version & 0xff;
 DRM_INFO("Found VCE firmware Version: %hhd.%hhd Binary ID: %hhd\n",
  version_major, version_minor, binary_id);
 adev->vce.fw_version = ((version_major << 24) | (version_minor << 16) |
    (binary_id << 8));

 r = amdgpu_bo_create_kernel(adev, size, PAGE_SIZE,
        AMDGPU_GEM_DOMAIN_VRAM, &adev->vce.vcpu_bo,
        &adev->vce.gpu_addr, &adev->vce.cpu_addr);
 if (r) {
  dev_err(adev->dev, "(%d) failed to allocate VCE bo\n", r);
  return r;
 }

 for (i = 0; i < AMDGPU_MAX_VCE_HANDLES; ++i) {
  atomic_set(&adev->vce.handles[i], 0);
  adev->vce.filp[i] = ((void*)0);
 }

 INIT_DELAYED_WORK(&adev->vce.idle_work, amdgpu_vce_idle_work_handler);
 mutex_init(&adev->vce.idle_mutex);

 return 0;
}
