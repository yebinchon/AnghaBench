
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_22__ {int shaderEnable; void* swizzle; int num_rb_per_se; int max_compressed_frags; int num_shader_engines; int pipe_interleave; int num_banks; int num_pipes; } ;
struct TYPE_18__ {unsigned int num_banks; unsigned int tile_split; unsigned int bank_width; unsigned int bank_height; unsigned int tile_aspect; void* pipe_config; void* array_mode; int tile_mode; } ;
struct TYPE_16__ {void* high_part; void* low_part; } ;
struct TYPE_15__ {void* high_part; void* low_part; } ;
struct TYPE_17__ {TYPE_12__ chroma_addr; TYPE_11__ luma_addr; } ;
struct TYPE_26__ {int width; int height; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_25__ {int width; int height; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_23__ {void* high_part; void* low_part; } ;
struct TYPE_24__ {TYPE_6__ addr; } ;
union dc_tiling_info {int surface_pitch; int chroma_pitch; TYPE_5__ gfx9; TYPE_1__ gfx8; TYPE_13__ video_progressive; int type; TYPE_9__ chroma_size; TYPE_8__ surface_size; TYPE_7__ grph; } ;
typedef scalar_t__ uint64_t ;
struct plane_size {int surface_pitch; int chroma_pitch; TYPE_5__ gfx9; TYPE_1__ gfx8; TYPE_13__ video_progressive; int type; TYPE_9__ chroma_size; TYPE_8__ surface_size; TYPE_7__ grph; } ;
struct drm_framebuffer {int width; int height; int* pitches; TYPE_10__* format; scalar_t__* offsets; } ;
struct dc_plane_dcc_param {int surface_pitch; int chroma_pitch; TYPE_5__ gfx9; TYPE_1__ gfx8; TYPE_13__ video_progressive; int type; TYPE_9__ chroma_size; TYPE_8__ surface_size; TYPE_7__ grph; } ;
struct dc_plane_address {int surface_pitch; int chroma_pitch; TYPE_5__ gfx9; TYPE_1__ gfx8; TYPE_13__ video_progressive; int type; TYPE_9__ chroma_size; TYPE_8__ surface_size; TYPE_7__ grph; } ;
struct amdgpu_framebuffer {scalar_t__ address; struct drm_framebuffer base; } ;
struct TYPE_19__ {int num_rb_per_se; int max_compress_frags; int num_se; int pipe_interleave_size; int num_banks; int num_pipes; } ;
struct TYPE_20__ {TYPE_2__ gb_addr_config_fields; } ;
struct TYPE_21__ {TYPE_3__ config; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_4__ gfx; } ;
typedef enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;
typedef enum dc_rotation_angle { ____Placeholder_dc_rotation_angle } dc_rotation_angle ;
struct TYPE_14__ {int* cpp; } ;


 void* AMDGPU_TILING_GET (scalar_t__ const,int ) ;
 int ARRAY_MODE ;
 int BANK_HEIGHT ;
 int BANK_WIDTH ;
 scalar_t__ CHIP_NAVI10 ;
 scalar_t__ CHIP_NAVI12 ;
 scalar_t__ CHIP_NAVI14 ;
 scalar_t__ CHIP_RAVEN ;
 scalar_t__ CHIP_RENOIR ;
 scalar_t__ CHIP_VEGA10 ;
 scalar_t__ CHIP_VEGA12 ;
 scalar_t__ CHIP_VEGA20 ;
 int DC_ADDR_SURF_MICRO_TILING_DISPLAY ;
 void* DC_ARRAY_1D_TILED_THIN1 ;
 void* DC_ARRAY_2D_TILED_THIN1 ;
 int MACRO_TILE_ASPECT ;
 int NUM_BANKS ;
 int PIPE_CONFIG ;
 int PLN_ADDR_TYPE_GRAPHICS ;
 int PLN_ADDR_TYPE_VIDEO_PROGRESSIVE ;
 int const SURFACE_PIXEL_FORMAT_INVALID ;
 int const SURFACE_PIXEL_FORMAT_VIDEO_BEGIN ;
 int SWIZZLE_MODE ;
 int TILE_SPLIT ;
 int fill_plane_dcc_attributes (struct amdgpu_device*,struct amdgpu_framebuffer const*,int const,int const,union dc_tiling_info*,union dc_tiling_info*,scalar_t__ const,union dc_tiling_info*,union dc_tiling_info*) ;
 void* lower_32_bits (scalar_t__) ;
 int memset (union dc_tiling_info*,int ,int) ;
 void* upper_32_bits (scalar_t__) ;

__attribute__((used)) static int
fill_plane_buffer_attributes(struct amdgpu_device *adev,
        const struct amdgpu_framebuffer *afb,
        const enum surface_pixel_format format,
        const enum dc_rotation_angle rotation,
        const uint64_t tiling_flags,
        union dc_tiling_info *tiling_info,
        struct plane_size *plane_size,
        struct dc_plane_dcc_param *dcc,
        struct dc_plane_address *address)
{
 const struct drm_framebuffer *fb = &afb->base;
 int ret;

 memset(tiling_info, 0, sizeof(*tiling_info));
 memset(plane_size, 0, sizeof(*plane_size));
 memset(dcc, 0, sizeof(*dcc));
 memset(address, 0, sizeof(*address));

 if (format < SURFACE_PIXEL_FORMAT_VIDEO_BEGIN) {
  plane_size->surface_size.x = 0;
  plane_size->surface_size.y = 0;
  plane_size->surface_size.width = fb->width;
  plane_size->surface_size.height = fb->height;
  plane_size->surface_pitch =
   fb->pitches[0] / fb->format->cpp[0];

  address->type = PLN_ADDR_TYPE_GRAPHICS;
  address->grph.addr.low_part = lower_32_bits(afb->address);
  address->grph.addr.high_part = upper_32_bits(afb->address);
 } else if (format < SURFACE_PIXEL_FORMAT_INVALID) {
  uint64_t chroma_addr = afb->address + fb->offsets[1];

  plane_size->surface_size.x = 0;
  plane_size->surface_size.y = 0;
  plane_size->surface_size.width = fb->width;
  plane_size->surface_size.height = fb->height;
  plane_size->surface_pitch =
   fb->pitches[0] / fb->format->cpp[0];

  plane_size->chroma_size.x = 0;
  plane_size->chroma_size.y = 0;

  plane_size->chroma_size.width = fb->width / 2;
  plane_size->chroma_size.height = fb->height / 2;

  plane_size->chroma_pitch =
   fb->pitches[1] / fb->format->cpp[1];

  address->type = PLN_ADDR_TYPE_VIDEO_PROGRESSIVE;
  address->video_progressive.luma_addr.low_part =
   lower_32_bits(afb->address);
  address->video_progressive.luma_addr.high_part =
   upper_32_bits(afb->address);
  address->video_progressive.chroma_addr.low_part =
   lower_32_bits(chroma_addr);
  address->video_progressive.chroma_addr.high_part =
   upper_32_bits(chroma_addr);
 }


 if (AMDGPU_TILING_GET(tiling_flags, ARRAY_MODE) == DC_ARRAY_2D_TILED_THIN1) {
  unsigned int bankw, bankh, mtaspect, tile_split, num_banks;

  bankw = AMDGPU_TILING_GET(tiling_flags, BANK_WIDTH);
  bankh = AMDGPU_TILING_GET(tiling_flags, BANK_HEIGHT);
  mtaspect = AMDGPU_TILING_GET(tiling_flags, MACRO_TILE_ASPECT);
  tile_split = AMDGPU_TILING_GET(tiling_flags, TILE_SPLIT);
  num_banks = AMDGPU_TILING_GET(tiling_flags, NUM_BANKS);


  tiling_info->gfx8.num_banks = num_banks;
  tiling_info->gfx8.array_mode =
    DC_ARRAY_2D_TILED_THIN1;
  tiling_info->gfx8.tile_split = tile_split;
  tiling_info->gfx8.bank_width = bankw;
  tiling_info->gfx8.bank_height = bankh;
  tiling_info->gfx8.tile_aspect = mtaspect;
  tiling_info->gfx8.tile_mode =
    DC_ADDR_SURF_MICRO_TILING_DISPLAY;
 } else if (AMDGPU_TILING_GET(tiling_flags, ARRAY_MODE)
   == DC_ARRAY_1D_TILED_THIN1) {
  tiling_info->gfx8.array_mode = DC_ARRAY_1D_TILED_THIN1;
 }

 tiling_info->gfx8.pipe_config =
   AMDGPU_TILING_GET(tiling_flags, PIPE_CONFIG);

 if (adev->asic_type == CHIP_VEGA10 ||
     adev->asic_type == CHIP_VEGA12 ||
     adev->asic_type == CHIP_VEGA20 ||
     adev->asic_type == CHIP_RAVEN) {

  tiling_info->gfx9.num_pipes =
   adev->gfx.config.gb_addr_config_fields.num_pipes;
  tiling_info->gfx9.num_banks =
   adev->gfx.config.gb_addr_config_fields.num_banks;
  tiling_info->gfx9.pipe_interleave =
   adev->gfx.config.gb_addr_config_fields.pipe_interleave_size;
  tiling_info->gfx9.num_shader_engines =
   adev->gfx.config.gb_addr_config_fields.num_se;
  tiling_info->gfx9.max_compressed_frags =
   adev->gfx.config.gb_addr_config_fields.max_compress_frags;
  tiling_info->gfx9.num_rb_per_se =
   adev->gfx.config.gb_addr_config_fields.num_rb_per_se;
  tiling_info->gfx9.swizzle =
   AMDGPU_TILING_GET(tiling_flags, SWIZZLE_MODE);
  tiling_info->gfx9.shaderEnable = 1;

  ret = fill_plane_dcc_attributes(adev, afb, format, rotation,
      plane_size, tiling_info,
      tiling_flags, dcc, address);
  if (ret)
   return ret;
 }

 return 0;
}
