
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int msm_drm_uninit (struct device*) ;

__attribute__((used)) static void msm_drm_unbind(struct device *dev)
{
 msm_drm_uninit(dev);
}
