
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int family; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
struct TYPE_6__ {TYPE_2__ device; } ;
struct nouveau_drm {TYPE_3__ client; } ;
typedef int s32 ;


 int NVIF_CLASS_SW_GF100 ;
 int NVIF_CLASS_SW_NV04 ;
 int NVIF_CLASS_SW_NV10 ;
 int NVIF_CLASS_SW_NV50 ;
s32
nouveau_abi16_swclass(struct nouveau_drm *drm)
{
 switch (drm->client.device.info.family) {
 case 129:
  return NVIF_CLASS_SW_NV04;
 case 138:
 case 135:
 case 131:
 case 137:
  return NVIF_CLASS_SW_NV10;
 case 130:
  return NVIF_CLASS_SW_NV50;
 case 136:
 case 134:
 case 133:
 case 132:
 case 128:
  return NVIF_CLASS_SW_GF100;
 }

 return 0x0000;
}
