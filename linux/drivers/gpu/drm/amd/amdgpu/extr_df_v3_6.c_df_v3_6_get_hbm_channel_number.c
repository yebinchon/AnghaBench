
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct amdgpu_device {TYPE_1__* df_funcs; } ;
struct TYPE_2__ {int (* get_fb_channel_number ) (struct amdgpu_device*) ;} ;


 int ARRAY_SIZE (int *) ;
 int * df_v3_6_channel_number ;
 int stub1 (struct amdgpu_device*) ;

__attribute__((used)) static u32 df_v3_6_get_hbm_channel_number(struct amdgpu_device *adev)
{
 int fb_channel_number;

 fb_channel_number = adev->df_funcs->get_fb_channel_number(adev);
 if (fb_channel_number >= ARRAY_SIZE(df_v3_6_channel_number))
  fb_channel_number = 0;

 return df_v3_6_channel_number[fb_channel_number];
}
