
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_exec_info {int ct1ea; int ct1ca; } ;
struct vc4_dev {int dummy; } ;
struct drm_device {int dummy; } ;


 int submit_cl (struct drm_device*,int,int ,int ) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 struct vc4_exec_info* vc4_first_render_job (struct vc4_dev*) ;
 int vc4_flush_texture_caches (struct drm_device*) ;

void
vc4_submit_next_render_job(struct drm_device *dev)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct vc4_exec_info *exec = vc4_first_render_job(vc4);

 if (!exec)
  return;







 vc4_flush_texture_caches(dev);

 submit_cl(dev, 1, exec->ct1ca, exec->ct1ea);
}
