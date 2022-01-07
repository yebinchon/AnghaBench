
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_device {int dummy; } ;
struct dma_buf_attachment {int dummy; } ;


 int ENOSYS ;
 struct drm_gem_object* ERR_PTR (int ) ;

struct drm_gem_object *qxl_gem_prime_import_sg_table(
 struct drm_device *dev, struct dma_buf_attachment *attach,
 struct sg_table *table)
{
 return ERR_PTR(-ENOSYS);
}
