
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_dig; TYPE_2__** afmt; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
struct amdgpu_afmt {int dummy; } ;
struct TYPE_5__ {int id; int offset; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * dig_offsets ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kzalloc (int,int ) ;

__attribute__((used)) static int dce_v8_0_afmt_init(struct amdgpu_device *adev)
{
 int i;

 for (i = 0; i < adev->mode_info.num_dig; i++)
  adev->mode_info.afmt[i] = ((void*)0);


 for (i = 0; i < adev->mode_info.num_dig; i++) {
  adev->mode_info.afmt[i] = kzalloc(sizeof(struct amdgpu_afmt), GFP_KERNEL);
  if (adev->mode_info.afmt[i]) {
   adev->mode_info.afmt[i]->offset = dig_offsets[i];
   adev->mode_info.afmt[i]->id = i;
  } else {
   int j;
   for (j = 0; j < i; j++) {
    kfree(adev->mode_info.afmt[j]);
    adev->mode_info.afmt[j] = ((void*)0);
   }
   return -ENOMEM;
  }
 }
 return 0;
}
