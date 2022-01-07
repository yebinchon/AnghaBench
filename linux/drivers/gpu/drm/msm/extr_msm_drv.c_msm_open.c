
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int context_init (struct drm_device*,struct drm_file*) ;
 int load_gpu (struct drm_device*) ;

__attribute__((used)) static int msm_open(struct drm_device *dev, struct drm_file *file)
{



 load_gpu(dev);

 return context_init(dev, file);
}
