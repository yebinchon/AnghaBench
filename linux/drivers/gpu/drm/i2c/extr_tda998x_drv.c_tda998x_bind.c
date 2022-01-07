
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int tda998x_encoder_init (struct device*,struct drm_device*) ;

__attribute__((used)) static int tda998x_bind(struct device *dev, struct device *master, void *data)
{
 struct drm_device *drm = data;

 return tda998x_encoder_init(dev, drm);
}
