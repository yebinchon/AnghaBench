
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_device {int dummy; } ;
struct drm_device {struct lima_device* dev_private; } ;



__attribute__((used)) static inline struct lima_device *
to_lima_dev(struct drm_device *dev)
{
 return dev->dev_private;
}
