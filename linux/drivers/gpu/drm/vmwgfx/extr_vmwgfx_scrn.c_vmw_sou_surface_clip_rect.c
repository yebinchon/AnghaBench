
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vmw_du_update_plane {int dummy; } ;
struct drm_rect {int y2; int x2; int y1; int x1; } ;
struct TYPE_2__ {int bottom; int right; int top; int left; } ;
typedef TYPE_1__ SVGASignedRect ;



__attribute__((used)) static uint32_t vmw_sou_surface_clip_rect(struct vmw_du_update_plane *update,
       void *cmd, struct drm_rect *clip,
       uint32_t src_x, uint32_t src_y)
{
 SVGASignedRect *rect = cmd;





 rect->left = clip->x1;
 rect->top = clip->y1;
 rect->right = clip->x2;
 rect->bottom = clip->y2;

 return sizeof(*rect);
}
