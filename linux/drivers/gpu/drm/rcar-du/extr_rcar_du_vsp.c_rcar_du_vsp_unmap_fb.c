
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_table {int dummy; } ;
struct rcar_du_vsp {int vsp; } ;
struct drm_framebuffer {TYPE_1__* format; } ;
struct TYPE_2__ {unsigned int num_planes; } ;


 int sg_free_table (struct sg_table*) ;
 int vsp1_du_unmap_sg (int ,struct sg_table*) ;

void rcar_du_vsp_unmap_fb(struct rcar_du_vsp *vsp, struct drm_framebuffer *fb,
     struct sg_table sg_tables[3])
{
 unsigned int i;

 for (i = 0; i < fb->format->num_planes; ++i) {
  struct sg_table *sgt = &sg_tables[i];

  vsp1_du_unmap_sg(vsp->vsp, sgt);
  sg_free_table(sgt);
 }
}
