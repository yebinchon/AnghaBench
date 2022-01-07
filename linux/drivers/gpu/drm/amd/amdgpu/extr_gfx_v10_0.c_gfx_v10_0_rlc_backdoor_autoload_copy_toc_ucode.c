
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {void* rlc_toc_buf; } ;
struct TYPE_5__ {TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;
struct TYPE_6__ {int size; } ;


 size_t FIRMWARE_ID_RLC_TOC ;
 int gfx_v10_0_rlc_backdoor_autoload_copy_ucode (struct amdgpu_device*,size_t,void*,int ) ;
 TYPE_3__* rlc_autoload_info ;

__attribute__((used)) static void gfx_v10_0_rlc_backdoor_autoload_copy_toc_ucode(struct amdgpu_device *adev)
{
 void *data;
 uint32_t size;

 data = adev->gfx.rlc.rlc_toc_buf;
 size = rlc_autoload_info[FIRMWARE_ID_RLC_TOC].size;

 gfx_v10_0_rlc_backdoor_autoload_copy_ucode(adev,
         FIRMWARE_ID_RLC_TOC,
         data, size);
}
