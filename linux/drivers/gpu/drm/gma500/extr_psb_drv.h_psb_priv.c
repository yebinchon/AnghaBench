
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int dummy; } ;
struct drm_device {scalar_t__ dev_private; } ;



__attribute__((used)) static inline struct drm_psb_private *psb_priv(struct drm_device *dev)
{
 return (struct drm_psb_private *) dev->dev_private;
}
