
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {char* rlc_autoload_ptr; } ;
struct TYPE_5__ {TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;
struct TYPE_6__ {scalar_t__ offset; scalar_t__ size; } ;
typedef size_t FIRMWARE_ID ;


 size_t FIRMWARE_ID_INVALID ;
 size_t FIRMWARE_ID_MAX ;
 int memcpy (char*,void const*,scalar_t__) ;
 int memset (char*,int ,scalar_t__) ;
 TYPE_3__* rlc_autoload_info ;

__attribute__((used)) static void gfx_v10_0_rlc_backdoor_autoload_copy_ucode(struct amdgpu_device *adev,
             FIRMWARE_ID id,
             const void *fw_data,
             uint32_t fw_size)
{
 uint32_t toc_offset;
 uint32_t toc_fw_size;
 char *ptr = adev->gfx.rlc.rlc_autoload_ptr;

 if (id <= FIRMWARE_ID_INVALID || id >= FIRMWARE_ID_MAX)
  return;

 toc_offset = rlc_autoload_info[id].offset;
 toc_fw_size = rlc_autoload_info[id].size;

 if (fw_size == 0)
  fw_size = toc_fw_size;

 if (fw_size > toc_fw_size)
  fw_size = toc_fw_size;

 memcpy(ptr + toc_offset, fw_data, fw_size);

 if (fw_size < toc_fw_size)
  memset(ptr + toc_offset + fw_size, 0, toc_fw_size - fw_size);
}
