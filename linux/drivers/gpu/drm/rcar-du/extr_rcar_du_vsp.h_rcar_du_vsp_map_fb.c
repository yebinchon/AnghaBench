
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct rcar_du_vsp {int dummy; } ;
struct drm_framebuffer {int dummy; } ;


 int ENXIO ;

__attribute__((used)) static inline int rcar_du_vsp_map_fb(struct rcar_du_vsp *vsp,
         struct drm_framebuffer *fb,
         struct sg_table sg_tables[3])
{
 return -ENXIO;
}
