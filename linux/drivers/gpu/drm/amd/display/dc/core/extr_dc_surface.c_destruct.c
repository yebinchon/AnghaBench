
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_plane_state {int * blend_tf; int * lut3d_func; int * in_shaper_func; int * in_transfer_func; int * gamma_correction; } ;


 int dc_3dlut_func_release (int *) ;
 int dc_gamma_release (int **) ;
 int dc_transfer_func_release (int *) ;

__attribute__((used)) static void destruct(struct dc_plane_state *plane_state)
{
 if (plane_state->gamma_correction != ((void*)0)) {
  dc_gamma_release(&plane_state->gamma_correction);
 }
 if (plane_state->in_transfer_func != ((void*)0)) {
  dc_transfer_func_release(
    plane_state->in_transfer_func);
  plane_state->in_transfer_func = ((void*)0);
 }
}
