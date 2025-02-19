
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {int audio_registered; TYPE_3__* dc; } ;
struct TYPE_12__ {int enabled; int num_pins; TYPE_4__* pin; } ;
struct TYPE_13__ {TYPE_5__ audio; } ;
struct amdgpu_device {TYPE_7__ dm; int dev; TYPE_6__ mode_info; } ;
struct TYPE_11__ {int channels; int rate; int bits_per_sample; int connected; scalar_t__ offset; int id; scalar_t__ category_code; scalar_t__ status_bits; } ;
struct TYPE_10__ {TYPE_2__* res_pool; } ;
struct TYPE_9__ {int audio_count; TYPE_1__** audios; } ;
struct TYPE_8__ {int inst; } ;


 int amdgpu_audio ;
 int amdgpu_dm_audio_component_bind_ops ;
 int component_add (int ,int *) ;

__attribute__((used)) static int amdgpu_dm_audio_init(struct amdgpu_device *adev)
{
 int i, ret;

 if (!amdgpu_audio)
  return 0;

 adev->mode_info.audio.enabled = 1;

 adev->mode_info.audio.num_pins = adev->dm.dc->res_pool->audio_count;

 for (i = 0; i < adev->mode_info.audio.num_pins; i++) {
  adev->mode_info.audio.pin[i].channels = -1;
  adev->mode_info.audio.pin[i].rate = -1;
  adev->mode_info.audio.pin[i].bits_per_sample = -1;
  adev->mode_info.audio.pin[i].status_bits = 0;
  adev->mode_info.audio.pin[i].category_code = 0;
  adev->mode_info.audio.pin[i].connected = 0;
  adev->mode_info.audio.pin[i].id =
   adev->dm.dc->res_pool->audios[i]->inst;
  adev->mode_info.audio.pin[i].offset = 0;
 }

 ret = component_add(adev->dev, &amdgpu_dm_audio_component_bind_ops);
 if (ret < 0)
  return ret;

 adev->dm.audio_registered = 1;

 return 0;
}
