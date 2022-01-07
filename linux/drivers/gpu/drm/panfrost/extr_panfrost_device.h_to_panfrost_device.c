
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_device {int dummy; } ;
struct drm_device {struct panfrost_device* dev_private; } ;



__attribute__((used)) static inline struct panfrost_device *to_panfrost_device(struct drm_device *ddev)
{
 return ddev->dev_private;
}
