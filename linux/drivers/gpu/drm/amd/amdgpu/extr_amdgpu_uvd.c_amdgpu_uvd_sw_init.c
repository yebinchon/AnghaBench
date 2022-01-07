
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct common_firmware_header {int ucode_size_bytes; int ucode_version; } ;
struct TYPE_9__ {unsigned long max_handles; unsigned int fw_version; int num_uvd_inst; int harvest_config; int address_64_bit; int use_ctx_buf; int ** filp; int * handles; TYPE_2__* inst; TYPE_4__* fw; int idle_work; } ;
struct TYPE_7__ {scalar_t__ load_type; } ;
struct amdgpu_device {int asic_type; TYPE_3__ uvd; int dev; TYPE_1__ firmware; } ;
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_8__ {int cpu_addr; int gpu_addr; int vcpu_bo; } ;


 unsigned long AMDGPU_DEFAULT_UVD_HANDLES ;
 scalar_t__ AMDGPU_FW_LOAD_PSP ;
 int AMDGPU_GEM_DOMAIN_VRAM ;
 scalar_t__ AMDGPU_GPU_PAGE_ALIGN (int) ;
 void* AMDGPU_MAX_UVD_HANDLES ;
 unsigned long AMDGPU_UVD_HEAP_SIZE ;
 unsigned long AMDGPU_UVD_SESSION_SIZE ;
 unsigned long AMDGPU_UVD_STACK_SIZE ;
 int AMD_IP_BLOCK_TYPE_UVD ;
 int DRM_ERROR (char*,unsigned int,unsigned int) ;
 int DRM_INFO (char*,unsigned int,unsigned int,unsigned int,...) ;
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
 unsigned int FW_1_37_15 ;
 unsigned int FW_1_65_10 ;
 unsigned int FW_1_66_16 ;
 unsigned int FW_1_87_11 ;
 unsigned int FW_1_87_12 ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int PAGE_SIZE ;
 int amdgpu_bo_create_kernel (struct amdgpu_device*,unsigned long,int ,int ,int *,int *,int *) ;
 int amdgpu_device_ip_block_version_cmp (struct amdgpu_device*,int ,int,int ) ;
 int amdgpu_ucode_validate (TYPE_4__*) ;
 int amdgpu_uvd_idle_work_handler ;
 int atomic_set (int *,int ) ;
 int dev_err (int ,char*,...) ;
 int le32_to_cpu (int ) ;
 int release_firmware (TYPE_4__*) ;
 int request_firmware (TYPE_4__**,char const*,int ) ;

int amdgpu_uvd_sw_init(struct amdgpu_device *adev)
{
 unsigned long bo_size;
 const char *fw_name;
 const struct common_firmware_header *hdr;
 unsigned family_id;
 int i, j, r;

 INIT_DELAYED_WORK(&adev->uvd.idle_work, amdgpu_uvd_idle_work_handler);

 switch (adev->asic_type) {
 case 132:
  fw_name = FIRMWARE_TONGA;
  break;
 case 141:
  fw_name = FIRMWARE_FIJI;
  break;
 case 142:
  fw_name = FIRMWARE_CARRIZO;
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
 case 131:
  fw_name = FIRMWARE_VEGA10;
  break;
 case 130:
  fw_name = FIRMWARE_VEGA12;
  break;
 case 128:
  fw_name = FIRMWARE_VEGAM;
  break;
 case 129:
  fw_name = FIRMWARE_VEGA20;
  break;
 default:
  return -EINVAL;
 }

 r = request_firmware(&adev->uvd.fw, fw_name, adev->dev);
 if (r) {
  dev_err(adev->dev, "amdgpu_uvd: Can't load firmware \"%s\"\n",
   fw_name);
  return r;
 }

 r = amdgpu_ucode_validate(adev->uvd.fw);
 if (r) {
  dev_err(adev->dev, "amdgpu_uvd: Can't validate firmware \"%s\"\n",
   fw_name);
  release_firmware(adev->uvd.fw);
  adev->uvd.fw = ((void*)0);
  return r;
 }


 adev->uvd.max_handles = AMDGPU_DEFAULT_UVD_HANDLES;

 hdr = (const struct common_firmware_header *)adev->uvd.fw->data;
 family_id = le32_to_cpu(hdr->ucode_version) & 0xff;

 if (adev->asic_type < 129) {
  unsigned version_major, version_minor;

  version_major = (le32_to_cpu(hdr->ucode_version) >> 24) & 0xff;
  version_minor = (le32_to_cpu(hdr->ucode_version) >> 8) & 0xff;
  DRM_INFO("Found UVD firmware Version: %hu.%hu Family ID: %hu\n",
   version_major, version_minor, family_id);







  if ((version_major > 0x01) ||
      ((version_major == 0x01) && (version_minor >= 0x50)))
   adev->uvd.max_handles = AMDGPU_MAX_UVD_HANDLES;

  adev->uvd.fw_version = ((version_major << 24) | (version_minor << 16) |
     (family_id << 8));

  if ((adev->asic_type == 136 ||
       adev->asic_type == 135) &&
      (adev->uvd.fw_version < FW_1_66_16))
   DRM_ERROR("POLARIS10/11 UVD firmware version %hu.%hu is too old.\n",
      version_major, version_minor);
 } else {
  unsigned int enc_major, enc_minor, dec_minor;

  dec_minor = (le32_to_cpu(hdr->ucode_version) >> 8) & 0xff;
  enc_minor = (le32_to_cpu(hdr->ucode_version) >> 24) & 0x3f;
  enc_major = (le32_to_cpu(hdr->ucode_version) >> 30) & 0x3;
  DRM_INFO("Found UVD firmware ENC: %hu.%hu DEC: .%hu Family ID: %hu\n",
   enc_major, enc_minor, dec_minor, family_id);

  adev->uvd.max_handles = AMDGPU_MAX_UVD_HANDLES;

  adev->uvd.fw_version = le32_to_cpu(hdr->ucode_version);
 }

 bo_size = AMDGPU_UVD_STACK_SIZE + AMDGPU_UVD_HEAP_SIZE
    + AMDGPU_UVD_SESSION_SIZE * adev->uvd.max_handles;
 if (adev->firmware.load_type != AMDGPU_FW_LOAD_PSP)
  bo_size += AMDGPU_GPU_PAGE_ALIGN(le32_to_cpu(hdr->ucode_size_bytes) + 8);

 for (j = 0; j < adev->uvd.num_uvd_inst; j++) {
  if (adev->uvd.harvest_config & (1 << j))
   continue;
  r = amdgpu_bo_create_kernel(adev, bo_size, PAGE_SIZE,
         AMDGPU_GEM_DOMAIN_VRAM, &adev->uvd.inst[j].vcpu_bo,
         &adev->uvd.inst[j].gpu_addr, &adev->uvd.inst[j].cpu_addr);
  if (r) {
   dev_err(adev->dev, "(%d) failed to allocate UVD bo\n", r);
   return r;
  }
 }

 for (i = 0; i < adev->uvd.max_handles; ++i) {
  atomic_set(&adev->uvd.handles[i], 0);
  adev->uvd.filp[i] = ((void*)0);
 }


 if (!amdgpu_device_ip_block_version_cmp(adev, AMD_IP_BLOCK_TYPE_UVD, 5, 0))
  adev->uvd.address_64_bit = 1;

 switch (adev->asic_type) {
 case 132:
  adev->uvd.use_ctx_buf = adev->uvd.fw_version >= FW_1_65_10;
  break;
 case 142:
  adev->uvd.use_ctx_buf = adev->uvd.fw_version >= FW_1_87_11;
  break;
 case 141:
  adev->uvd.use_ctx_buf = adev->uvd.fw_version >= FW_1_87_12;
  break;
 case 133:
  adev->uvd.use_ctx_buf = adev->uvd.fw_version >= FW_1_37_15;
  break;
 default:
  adev->uvd.use_ctx_buf = adev->asic_type >= 136;
 }

 return 0;
}
