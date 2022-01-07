
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_device {int dummy; } ;
struct dma_buf_attachment {int dmabuf; } ;


 struct drm_gem_object* msm_gem_import (struct drm_device*,int ,struct sg_table*) ;

struct drm_gem_object *msm_gem_prime_import_sg_table(struct drm_device *dev,
  struct dma_buf_attachment *attach, struct sg_table *sg)
{
 return msm_gem_import(dev, attach->dmabuf, sg);
}
