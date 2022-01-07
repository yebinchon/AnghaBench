
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct dc_transfer_func_distributed_points {int dummy; } ;
struct dc_surface_update {int * coeff_reduction_factor; int * input_csc_color_matrix; int * blend_tf; int * lut3d_func; int * func_shaper; TYPE_6__* in_transfer_func; TYPE_5__* gamma; TYPE_4__* plane_info; TYPE_3__* scaling_info; TYPE_1__* flip_addr; } ;
struct TYPE_8__ {size_t index; scalar_t__ prev_update_time_in_us; scalar_t__* time_elapsed_in_us; } ;
struct dc_plane_state {int coeff_reduction_factor; int input_csc_color_matrix; int * blend_tf; int * lut3d_func; int * in_shaper_func; TYPE_6__* in_transfer_func; TYPE_5__* gamma_correction; int layer_index; int sdr_white_level; int dcc; int global_alpha_value; int global_alpha; int per_pixel_alpha; int visible; int tiling_info; int stereo_format; int horizontal_mirror; int rotation; int plane_size; int format; int color_space; int clip_rect; int src_rect; int dst_rect; int scaling_quality; TYPE_2__ time; int flip_immediate; int address; } ;
struct dc_gamma_entries {int dummy; } ;
struct TYPE_12__ {int tf_pts; int type; int tf; int sdr_ref_white_level; } ;
struct TYPE_11__ {int type; int num_entries; int is_identity; int entries; } ;
struct TYPE_10__ {int layer_index; int sdr_white_level; int dcc; int global_alpha_value; int global_alpha; int per_pixel_alpha; int visible; int tiling_info; int stereo_format; int horizontal_mirror; int rotation; int plane_size; int format; int color_space; } ;
struct TYPE_9__ {int clip_rect; int src_rect; int dst_rect; int scaling_quality; } ;
struct TYPE_7__ {scalar_t__ flip_timestamp_in_us; int flip_immediate; int address; } ;


 size_t DC_PLANE_UPDATE_TIMES_MAX ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void copy_surface_update_to_plane(
  struct dc_plane_state *surface,
  struct dc_surface_update *srf_update)
{
 if (srf_update->flip_addr) {
  surface->address = srf_update->flip_addr->address;
  surface->flip_immediate =
   srf_update->flip_addr->flip_immediate;
  surface->time.time_elapsed_in_us[surface->time.index] =
   srf_update->flip_addr->flip_timestamp_in_us -
    surface->time.prev_update_time_in_us;
  surface->time.prev_update_time_in_us =
   srf_update->flip_addr->flip_timestamp_in_us;
  surface->time.index++;
  if (surface->time.index >= DC_PLANE_UPDATE_TIMES_MAX)
   surface->time.index = 0;
 }

 if (srf_update->scaling_info) {
  surface->scaling_quality =
    srf_update->scaling_info->scaling_quality;
  surface->dst_rect =
    srf_update->scaling_info->dst_rect;
  surface->src_rect =
    srf_update->scaling_info->src_rect;
  surface->clip_rect =
    srf_update->scaling_info->clip_rect;
 }

 if (srf_update->plane_info) {
  surface->color_space =
    srf_update->plane_info->color_space;
  surface->format =
    srf_update->plane_info->format;
  surface->plane_size =
    srf_update->plane_info->plane_size;
  surface->rotation =
    srf_update->plane_info->rotation;
  surface->horizontal_mirror =
    srf_update->plane_info->horizontal_mirror;
  surface->stereo_format =
    srf_update->plane_info->stereo_format;
  surface->tiling_info =
    srf_update->plane_info->tiling_info;
  surface->visible =
    srf_update->plane_info->visible;
  surface->per_pixel_alpha =
    srf_update->plane_info->per_pixel_alpha;
  surface->global_alpha =
    srf_update->plane_info->global_alpha;
  surface->global_alpha_value =
    srf_update->plane_info->global_alpha_value;
  surface->dcc =
    srf_update->plane_info->dcc;
  surface->sdr_white_level =
    srf_update->plane_info->sdr_white_level;
  surface->layer_index =
    srf_update->plane_info->layer_index;
 }

 if (srf_update->gamma &&
   (surface->gamma_correction !=
     srf_update->gamma)) {
  memcpy(&surface->gamma_correction->entries,
   &srf_update->gamma->entries,
   sizeof(struct dc_gamma_entries));
  surface->gamma_correction->is_identity =
   srf_update->gamma->is_identity;
  surface->gamma_correction->num_entries =
   srf_update->gamma->num_entries;
  surface->gamma_correction->type =
   srf_update->gamma->type;
 }

 if (srf_update->in_transfer_func &&
   (surface->in_transfer_func !=
    srf_update->in_transfer_func)) {
  surface->in_transfer_func->sdr_ref_white_level =
   srf_update->in_transfer_func->sdr_ref_white_level;
  surface->in_transfer_func->tf =
   srf_update->in_transfer_func->tf;
  surface->in_transfer_func->type =
   srf_update->in_transfer_func->type;
  memcpy(&surface->in_transfer_func->tf_pts,
   &srf_update->in_transfer_func->tf_pts,
   sizeof(struct dc_transfer_func_distributed_points));
 }
 if (srf_update->input_csc_color_matrix)
  surface->input_csc_color_matrix =
   *srf_update->input_csc_color_matrix;

 if (srf_update->coeff_reduction_factor)
  surface->coeff_reduction_factor =
   *srf_update->coeff_reduction_factor;
}
