
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_drm {int dummy; } ;
struct drm_device {struct nouveau_drm* dev_private; } ;



__attribute__((used)) static inline struct nouveau_drm *
nouveau_drm(struct drm_device *dev)
{
 return dev->dev_private;
}
