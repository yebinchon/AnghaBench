
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static inline int nouveau_svmm_bind(struct drm_device *device, void *p,
        struct drm_file *file)
{
 return -ENOSYS;
}
