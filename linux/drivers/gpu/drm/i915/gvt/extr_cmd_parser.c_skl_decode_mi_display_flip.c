
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct parser_exec_state {struct intel_vgpu* vgpu; } ;
struct mi_display_flip_command_info {int stride_val; int tile_val; int surf_val; int async_flip; void* pipe; int surf_reg; int stride_reg; int ctrl_reg; void* plane; int event; } ;
struct intel_vgpu {TYPE_1__* gvt; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {struct drm_i915_private* dev_priv; } ;


 int DSPCNTR (void*) ;
 int DSPSTRIDE (void*) ;
 int DSPSURF (void*) ;
 int EBADRQC ;
 int GENMASK (int,int) ;






 void* PIPE_A ;
 void* PIPE_B ;
 void* PIPE_C ;
 int PRIMARY_A_FLIP_DONE ;
 int PRIMARY_B_FLIP_DONE ;
 int PRIMARY_C_FLIP_DONE ;
 void* PRIMARY_PLANE ;
 int SPRITE_A_FLIP_DONE ;
 int SPRITE_B_FLIP_DONE ;
 int SPRITE_C_FLIP_DONE ;
 void* SPRITE_PLANE ;
 int cmd_val (struct parser_exec_state*,int) ;
 int gvt_vgpu_err (char*,int) ;

__attribute__((used)) static int skl_decode_mi_display_flip(struct parser_exec_state *s,
  struct mi_display_flip_command_info *info)
{
 struct drm_i915_private *dev_priv = s->vgpu->gvt->dev_priv;
 struct intel_vgpu *vgpu = s->vgpu;
 u32 dword0 = cmd_val(s, 0);
 u32 dword1 = cmd_val(s, 1);
 u32 dword2 = cmd_val(s, 2);
 u32 plane = (dword0 & GENMASK(12, 8)) >> 8;

 info->plane = PRIMARY_PLANE;

 switch (plane) {
 case 133:
  info->pipe = PIPE_A;
  info->event = PRIMARY_A_FLIP_DONE;
  break;
 case 132:
  info->pipe = PIPE_B;
  info->event = PRIMARY_B_FLIP_DONE;
  break;
 case 131:
  info->pipe = PIPE_C;
  info->event = PRIMARY_C_FLIP_DONE;
  break;

 case 130:
  info->pipe = PIPE_A;
  info->event = SPRITE_A_FLIP_DONE;
  info->plane = SPRITE_PLANE;
  break;
 case 129:
  info->pipe = PIPE_B;
  info->event = SPRITE_B_FLIP_DONE;
  info->plane = SPRITE_PLANE;
  break;
 case 128:
  info->pipe = PIPE_C;
  info->event = SPRITE_C_FLIP_DONE;
  info->plane = SPRITE_PLANE;
  break;

 default:
  gvt_vgpu_err("unknown plane code %d\n", plane);
  return -EBADRQC;
 }

 info->stride_val = (dword1 & GENMASK(15, 6)) >> 6;
 info->tile_val = (dword1 & GENMASK(2, 0));
 info->surf_val = (dword2 & GENMASK(31, 12)) >> 12;
 info->async_flip = ((dword2 & GENMASK(1, 0)) == 0x1);

 info->ctrl_reg = DSPCNTR(info->pipe);
 info->stride_reg = DSPSTRIDE(info->pipe);
 info->surf_reg = DSPSURF(info->pipe);

 return 0;
}
