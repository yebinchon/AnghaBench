
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_plane_state {size_t pos0_offset; size_t pos2_offset; size_t ptr0_offset; int * hw_dlist; int * dlist; int needs_bg_fill; int offsets; int is_yuv; int is_unity; int y_scaling; int x_scaling; int src_h; int src_w; int src_y; int src_x; int crtc_w; int crtc_h; int crtc_y; int crtc_x; } ;
struct drm_plane_state {int visible; int dst; int src; int color_range; int color_encoding; int normalized_zpos; int zpos; int rotation; int pixel_blend_mode; int alpha; int src_h; int src_w; int src_y; int src_x; int crtc_h; int crtc_w; int crtc_y; int crtc_x; int fb; } ;
struct drm_plane {struct drm_plane_state* state; } ;


 int memcpy (int ,int ,int) ;
 int swap (int ,int ) ;
 struct vc4_plane_state* to_vc4_plane_state (struct drm_plane_state*) ;
 int writel (int ,int *) ;

__attribute__((used)) static void vc4_plane_atomic_async_update(struct drm_plane *plane,
       struct drm_plane_state *state)
{
 struct vc4_plane_state *vc4_state, *new_vc4_state;

 swap(plane->state->fb, state->fb);
 plane->state->crtc_x = state->crtc_x;
 plane->state->crtc_y = state->crtc_y;
 plane->state->crtc_w = state->crtc_w;
 plane->state->crtc_h = state->crtc_h;
 plane->state->src_x = state->src_x;
 plane->state->src_y = state->src_y;
 plane->state->src_w = state->src_w;
 plane->state->src_h = state->src_h;
 plane->state->src_h = state->src_h;
 plane->state->alpha = state->alpha;
 plane->state->pixel_blend_mode = state->pixel_blend_mode;
 plane->state->rotation = state->rotation;
 plane->state->zpos = state->zpos;
 plane->state->normalized_zpos = state->normalized_zpos;
 plane->state->color_encoding = state->color_encoding;
 plane->state->color_range = state->color_range;
 plane->state->src = state->src;
 plane->state->dst = state->dst;
 plane->state->visible = state->visible;

 new_vc4_state = to_vc4_plane_state(state);
 vc4_state = to_vc4_plane_state(plane->state);

 vc4_state->crtc_x = new_vc4_state->crtc_x;
 vc4_state->crtc_y = new_vc4_state->crtc_y;
 vc4_state->crtc_h = new_vc4_state->crtc_h;
 vc4_state->crtc_w = new_vc4_state->crtc_w;
 vc4_state->src_x = new_vc4_state->src_x;
 vc4_state->src_y = new_vc4_state->src_y;
 memcpy(vc4_state->src_w, new_vc4_state->src_w,
        sizeof(vc4_state->src_w));
 memcpy(vc4_state->src_h, new_vc4_state->src_h,
        sizeof(vc4_state->src_h));
 memcpy(vc4_state->x_scaling, new_vc4_state->x_scaling,
        sizeof(vc4_state->x_scaling));
 memcpy(vc4_state->y_scaling, new_vc4_state->y_scaling,
        sizeof(vc4_state->y_scaling));
 vc4_state->is_unity = new_vc4_state->is_unity;
 vc4_state->is_yuv = new_vc4_state->is_yuv;
 memcpy(vc4_state->offsets, new_vc4_state->offsets,
        sizeof(vc4_state->offsets));
 vc4_state->needs_bg_fill = new_vc4_state->needs_bg_fill;


 vc4_state->dlist[vc4_state->pos0_offset] =
  new_vc4_state->dlist[vc4_state->pos0_offset];
 vc4_state->dlist[vc4_state->pos2_offset] =
  new_vc4_state->dlist[vc4_state->pos2_offset];
 vc4_state->dlist[vc4_state->ptr0_offset] =
  new_vc4_state->dlist[vc4_state->ptr0_offset];





 writel(vc4_state->dlist[vc4_state->pos0_offset],
        &vc4_state->hw_dlist[vc4_state->pos0_offset]);
 writel(vc4_state->dlist[vc4_state->pos2_offset],
        &vc4_state->hw_dlist[vc4_state->pos2_offset]);
 writel(vc4_state->dlist[vc4_state->ptr0_offset],
        &vc4_state->hw_dlist[vc4_state->ptr0_offset]);
}
