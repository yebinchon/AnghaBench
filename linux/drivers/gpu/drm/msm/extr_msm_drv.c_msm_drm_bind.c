
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int msm_driver ;
 int msm_drm_init (struct device*,int *) ;

__attribute__((used)) static int msm_drm_bind(struct device *dev)
{
 return msm_drm_init(dev, &msm_driver);
}
