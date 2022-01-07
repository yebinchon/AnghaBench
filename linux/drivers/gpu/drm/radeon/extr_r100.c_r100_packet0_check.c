
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct TYPE_6__ {int* ptr; } ;
struct radeon_cs_parser {int cs_flags; scalar_t__ track; TYPE_1__ ib; } ;
struct radeon_cs_packet {int dummy; } ;
struct radeon_bo_list {int tiling_flags; int gpu_offset; int robj; } ;
struct TYPE_8__ {int offset; int pitch; int cpp; int robj; } ;
struct r100_cs_track {int zb_dirty; int cb_dirty; int tex_dirty; int maxy; int z_enabled; int num_texture; int vap_vf_cntl; TYPE_5__* textures; int vtx_size; TYPE_3__ zb; TYPE_2__* cb; } ;
struct TYPE_10__ {int enabled; int width; int height; int num_levels; int roundup_w; int roundup_h; int use_pitch; int tex_coord_type; int cpp; TYPE_4__* cube_info; void* compress_format; int pitch; int robj; } ;
struct TYPE_9__ {int offset; int width; int height; int robj; } ;
struct TYPE_7__ {int offset; int pitch; int cpp; int robj; } ;


 int DRM_ERROR (char*,unsigned int,...) ;
 int EINVAL ;
 void* R100_TRACK_COMP_DXT1 ;
 void* R100_TRACK_COMP_DXT35 ;
 void* R100_TRACK_COMP_NONE ;
 int RADEON_COLORPITCH_MASK ;
 int RADEON_COLOR_MICROTILE_ENABLE ;
 int RADEON_COLOR_TILE_ENABLE ;

 int RADEON_CS_KEEP_TILING_FLAGS ;
 int RADEON_DEPTHPITCH_MASK ;

 int RADEON_MAX_MIP_LEVEL_MASK ;
 int RADEON_MAX_MIP_LEVEL_SHIFT ;
 int RADEON_RB3D_COLOR_FORMAT_SHIFT ;
 int RADEON_TEX_USIZE_MASK ;
 int RADEON_TEX_VSIZE_MASK ;
 int RADEON_TEX_VSIZE_SHIFT ;
 int RADEON_TILING_MACRO ;
 int RADEON_TILING_MICRO ;




 int RADEON_TXFORMAT_CUBIC_MAP_ENABLE ;




 int RADEON_TXFORMAT_FORMAT_MASK ;
 int RADEON_TXFORMAT_HEIGHT_MASK ;
 int RADEON_TXFORMAT_HEIGHT_SHIFT ;



 int RADEON_TXFORMAT_NON_POWER2 ;






 int RADEON_TXFORMAT_WIDTH_MASK ;
 int RADEON_TXFORMAT_WIDTH_SHIFT ;


 int RADEON_TXO_MACRO_TILE ;
 int RADEON_TXO_MICRO_TILE_X2 ;
 int RADEON_Z_ENABLE ;
 int pr_err (char*,unsigned int,unsigned int) ;
 int r100_cs_packet_parse_vline (struct radeon_cs_parser*) ;
 int r100_get_vtx_size (int) ;
 int r100_reloc_pitch_offset (struct radeon_cs_parser*,struct radeon_cs_packet*,unsigned int,unsigned int) ;
 int radeon_cs_dump_packet (struct radeon_cs_parser*,struct radeon_cs_packet*) ;
 int radeon_cs_packet_next_reloc (struct radeon_cs_parser*,struct radeon_bo_list**,int ) ;
 int radeon_get_ib_value (struct radeon_cs_parser*,unsigned int) ;

__attribute__((used)) static int r100_packet0_check(struct radeon_cs_parser *p,
         struct radeon_cs_packet *pkt,
         unsigned idx, unsigned reg)
{
 struct radeon_bo_list *reloc;
 struct r100_cs_track *track;
 volatile uint32_t *ib;
 uint32_t tmp;
 int r;
 int i, face;
 u32 tile_flags = 0;
 u32 idx_value;

 ib = p->ib.ptr;
 track = (struct r100_cs_track *)p->track;

 idx_value = radeon_get_ib_value(p, idx);

 switch (reg) {
 case 193:
  r = r100_cs_packet_parse_vline(p);
  if (r) {
   DRM_ERROR("No reloc for ib[%d]=0x%04X\n",
      idx, reg);
   radeon_cs_dump_packet(p, pkt);
   return r;
  }
  break;


 case 192:
 case 147:
  r = r100_reloc_pitch_offset(p, pkt, idx, reg);
  if (r)
   return r;
  break;
 case 154:
  r = radeon_cs_packet_next_reloc(p, &reloc, 0);
  if (r) {
   DRM_ERROR("No reloc for ib[%d]=0x%04X\n",
      idx, reg);
   radeon_cs_dump_packet(p, pkt);
   return r;
  }
  track->zb.robj = reloc->robj;
  track->zb.offset = idx_value;
  track->zb_dirty = 1;
  ib[idx] = idx_value + ((u32)reloc->gpu_offset);
  break;
 case 156:
  r = radeon_cs_packet_next_reloc(p, &reloc, 0);
  if (r) {
   DRM_ERROR("No reloc for ib[%d]=0x%04X\n",
      idx, reg);
   radeon_cs_dump_packet(p, pkt);
   return r;
  }
  track->cb[0].robj = reloc->robj;
  track->cb[0].offset = idx_value;
  track->cb_dirty = 1;
  ib[idx] = idx_value + ((u32)reloc->gpu_offset);
  break;
 case 160:
 case 159:
 case 158:
  i = (reg - 160) / 24;
  r = radeon_cs_packet_next_reloc(p, &reloc, 0);
  if (r) {
   DRM_ERROR("No reloc for ib[%d]=0x%04X\n",
      idx, reg);
   radeon_cs_dump_packet(p, pkt);
   return r;
  }
  if (!(p->cs_flags & RADEON_CS_KEEP_TILING_FLAGS)) {
   if (reloc->tiling_flags & RADEON_TILING_MACRO)
    tile_flags |= RADEON_TXO_MACRO_TILE;
   if (reloc->tiling_flags & RADEON_TILING_MICRO)
    tile_flags |= RADEON_TXO_MICRO_TILE_X2;

   tmp = idx_value & ~(0x7 << 2);
   tmp |= tile_flags;
   ib[idx] = tmp + ((u32)reloc->gpu_offset);
  } else
   ib[idx] = idx_value + ((u32)reloc->gpu_offset);
  track->textures[i].robj = reloc->robj;
  track->tex_dirty = 1;
  break;
 case 187:
 case 186:
 case 185:
 case 184:
 case 183:
  i = (reg - 187) / 4;
  r = radeon_cs_packet_next_reloc(p, &reloc, 0);
  if (r) {
   DRM_ERROR("No reloc for ib[%d]=0x%04X\n",
      idx, reg);
   radeon_cs_dump_packet(p, pkt);
   return r;
  }
  track->textures[0].cube_info[i].offset = idx_value;
  ib[idx] = idx_value + ((u32)reloc->gpu_offset);
  track->textures[0].cube_info[i].robj = reloc->robj;
  track->tex_dirty = 1;
  break;
 case 182:
 case 181:
 case 180:
 case 179:
 case 178:
  i = (reg - 182) / 4;
  r = radeon_cs_packet_next_reloc(p, &reloc, 0);
  if (r) {
   DRM_ERROR("No reloc for ib[%d]=0x%04X\n",
      idx, reg);
   radeon_cs_dump_packet(p, pkt);
   return r;
  }
  track->textures[1].cube_info[i].offset = idx_value;
  ib[idx] = idx_value + ((u32)reloc->gpu_offset);
  track->textures[1].cube_info[i].robj = reloc->robj;
  track->tex_dirty = 1;
  break;
 case 177:
 case 176:
 case 175:
 case 174:
 case 173:
  i = (reg - 177) / 4;
  r = radeon_cs_packet_next_reloc(p, &reloc, 0);
  if (r) {
   DRM_ERROR("No reloc for ib[%d]=0x%04X\n",
      idx, reg);
   radeon_cs_dump_packet(p, pkt);
   return r;
  }
  track->textures[2].cube_info[i].offset = idx_value;
  ib[idx] = idx_value + ((u32)reloc->gpu_offset);
  track->textures[2].cube_info[i].robj = reloc->robj;
  track->tex_dirty = 1;
  break;
 case 150:
  track->maxy = ((idx_value >> 16) & 0x7FF);
  track->cb_dirty = 1;
  track->zb_dirty = 1;
  break;
 case 155:
  r = radeon_cs_packet_next_reloc(p, &reloc, 0);
  if (r) {
   DRM_ERROR("No reloc for ib[%d]=0x%04X\n",
      idx, reg);
   radeon_cs_dump_packet(p, pkt);
   return r;
  }
  if (!(p->cs_flags & RADEON_CS_KEEP_TILING_FLAGS)) {
   if (reloc->tiling_flags & RADEON_TILING_MACRO)
    tile_flags |= RADEON_COLOR_TILE_ENABLE;
   if (reloc->tiling_flags & RADEON_TILING_MICRO)
    tile_flags |= RADEON_COLOR_MICROTILE_ENABLE;

   tmp = idx_value & ~(0x7 << 16);
   tmp |= tile_flags;
   ib[idx] = tmp;
  } else
   ib[idx] = idx_value;

  track->cb[0].pitch = idx_value & RADEON_COLORPITCH_MASK;
  track->cb_dirty = 1;
  break;
 case 153:
  track->zb.pitch = idx_value & RADEON_DEPTHPITCH_MASK;
  track->zb_dirty = 1;
  break;
 case 157:
  switch ((idx_value >> RADEON_RB3D_COLOR_FORMAT_SHIFT) & 0x1f) {
  case 7:
  case 8:
  case 9:
  case 11:
  case 12:
   track->cb[0].cpp = 1;
   break;
  case 3:
  case 4:
  case 15:
   track->cb[0].cpp = 2;
   break;
  case 6:
   track->cb[0].cpp = 4;
   break;
  default:
   DRM_ERROR("Invalid color buffer format (%d) !\n",
      ((idx_value >> RADEON_RB3D_COLOR_FORMAT_SHIFT) & 0x1f));
   return -EINVAL;
  }
  track->z_enabled = !!(idx_value & RADEON_Z_ENABLE);
  track->cb_dirty = 1;
  track->zb_dirty = 1;
  break;
 case 151:
  switch (idx_value & 0xf) {
  case 0:
   track->zb.cpp = 2;
   break;
  case 2:
  case 3:
  case 4:
  case 5:
  case 9:
  case 11:
   track->zb.cpp = 4;
   break;
  default:
   break;
  }
  track->zb_dirty = 1;
  break;
 case 152:
  r = radeon_cs_packet_next_reloc(p, &reloc, 0);
  if (r) {
   DRM_ERROR("No reloc for ib[%d]=0x%04X\n",
      idx, reg);
   radeon_cs_dump_packet(p, pkt);
   return r;
  }
  ib[idx] = idx_value + ((u32)reloc->gpu_offset);
  break;
 case 191:
  {
   uint32_t temp = idx_value >> 4;
   for (i = 0; i < track->num_texture; i++)
    track->textures[i].enabled = !!(temp & (1 << i));
   track->tex_dirty = 1;
  }
  break;
 case 149:
  track->vap_vf_cntl = idx_value;
  break;
 case 148:
  track->vtx_size = r100_get_vtx_size(idx_value);
  break;
 case 169:
 case 168:
 case 167:
  i = (reg - 169) / 8;
  track->textures[i].width = (idx_value & RADEON_TEX_USIZE_MASK) + 1;
  track->textures[i].height = ((idx_value & RADEON_TEX_VSIZE_MASK) >> RADEON_TEX_VSIZE_SHIFT) + 1;
  track->tex_dirty = 1;
  break;
 case 172:
 case 171:
 case 170:
  i = (reg - 172) / 8;
  track->textures[i].pitch = idx_value + 32;
  track->tex_dirty = 1;
  break;
 case 166:
 case 165:
 case 164:
  i = (reg - 166) / 24;
  track->textures[i].num_levels = ((idx_value & RADEON_MAX_MIP_LEVEL_MASK)
       >> RADEON_MAX_MIP_LEVEL_SHIFT);
  tmp = (idx_value >> 23) & 0x7;
  if (tmp == 2 || tmp == 6)
   track->textures[i].roundup_w = 0;
  tmp = (idx_value >> 27) & 0x7;
  if (tmp == 2 || tmp == 6)
   track->textures[i].roundup_h = 0;
  track->tex_dirty = 1;
  break;
 case 163:
 case 162:
 case 161:
  i = (reg - 163) / 24;
  if (idx_value & RADEON_TXFORMAT_NON_POWER2) {
   track->textures[i].use_pitch = 1;
  } else {
   track->textures[i].use_pitch = 0;
   track->textures[i].width = 1 << ((idx_value >> RADEON_TXFORMAT_WIDTH_SHIFT) & RADEON_TXFORMAT_WIDTH_MASK);
   track->textures[i].height = 1 << ((idx_value >> RADEON_TXFORMAT_HEIGHT_SHIFT) & RADEON_TXFORMAT_HEIGHT_MASK);
  }
  if (idx_value & RADEON_TXFORMAT_CUBIC_MAP_ENABLE)
   track->textures[i].tex_coord_type = 2;
  switch ((idx_value & RADEON_TXFORMAT_FORMAT_MASK)) {
  case 138:
  case 135:
  case 129:
   track->textures[i].cpp = 1;
   track->textures[i].compress_format = R100_TRACK_COMP_NONE;
   break;
  case 146:
  case 145:
  case 134:
  case 144:
  case 130:
  case 128:
  case 132:
  case 136:
  case 142:
   track->textures[i].cpp = 2;
   track->textures[i].compress_format = R100_TRACK_COMP_NONE;
   break;
  case 143:
  case 133:
  case 131:
  case 137:
   track->textures[i].cpp = 4;
   track->textures[i].compress_format = R100_TRACK_COMP_NONE;
   break;
  case 141:
   track->textures[i].cpp = 1;
   track->textures[i].compress_format = R100_TRACK_COMP_DXT1;
   break;
  case 140:
  case 139:
   track->textures[i].cpp = 1;
   track->textures[i].compress_format = R100_TRACK_COMP_DXT35;
   break;
  }
  track->textures[i].cube_info[4].width = 1 << ((idx_value >> 16) & 0xf);
  track->textures[i].cube_info[4].height = 1 << ((idx_value >> 20) & 0xf);
  track->tex_dirty = 1;
  break;
 case 190:
 case 189:
 case 188:
  tmp = idx_value;
  i = (reg - 190) / 4;
  for (face = 0; face < 4; face++) {
   track->textures[i].cube_info[face].width = 1 << ((tmp >> (face * 8)) & 0xf);
   track->textures[i].cube_info[face].height = 1 << ((tmp >> ((face * 8) + 4)) & 0xf);
  }
  track->tex_dirty = 1;
  break;
 default:
  pr_err("Forbidden register 0x%04X in cs at %d\n", reg, idx);
  return -EINVAL;
 }
 return 0;
}
