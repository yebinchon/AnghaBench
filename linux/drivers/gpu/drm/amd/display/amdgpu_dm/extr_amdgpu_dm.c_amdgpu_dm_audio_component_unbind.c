
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_audio_component {int * dev; int * ops; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int * audio_component; } ;
struct amdgpu_device {TYPE_1__ dm; } ;


 struct drm_device* dev_get_drvdata (struct device*) ;

__attribute__((used)) static void amdgpu_dm_audio_component_unbind(struct device *kdev,
       struct device *hda_kdev, void *data)
{
 struct drm_device *dev = dev_get_drvdata(kdev);
 struct amdgpu_device *adev = dev->dev_private;
 struct drm_audio_component *acomp = data;

 acomp->ops = ((void*)0);
 acomp->dev = ((void*)0);
 adev->dm.audio_component = ((void*)0);
}
