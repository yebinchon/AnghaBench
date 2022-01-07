
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_dev {int dummy; } ;
struct drm_device {scalar_t__ dev_private; } ;



__attribute__((used)) static inline struct v3d_dev *
to_v3d_dev(struct drm_device *dev)
{
 return (struct v3d_dev *)dev->dev_private;
}
