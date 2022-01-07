
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vmw_stdu_update {int dummy; } ;
struct vmw_du_update_plane {TYPE_1__* du; } ;
struct drm_rect {int y2; int y1; int x2; int x1; } ;
struct TYPE_2__ {int unit; } ;


 int vmw_stdu_populate_update (void*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static uint32_t
vmw_stdu_surface_populate_update(struct vmw_du_update_plane *update, void *cmd,
     struct drm_rect *bb)
{
 vmw_stdu_populate_update(cmd, update->du->unit, bb->x1, bb->x2, bb->y1,
     bb->y2);

 return sizeof(struct vmw_stdu_update);
}
