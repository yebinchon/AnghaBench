
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


typedef int u32 ;
struct TYPE_12__ {int length_dw; int * ptr; } ;
struct radeon_cs_parser {struct evergreen_cs_track* track; TYPE_6__ ib; int idx; TYPE_5__* chunk_ib; TYPE_4__* rdev; } ;
struct radeon_cs_packet {int type; scalar_t__ count; } ;
struct evergreen_cs_track {int npipes; int nbanks; int group_size; int row_size; void* reg_safe_bm; } ;
struct TYPE_11__ {int length_dw; } ;
struct TYPE_8__ {int tile_config; } ;
struct TYPE_7__ {int tile_config; } ;
struct TYPE_9__ {TYPE_2__ evergreen; TYPE_1__ cayman; } ;
struct TYPE_10__ {scalar_t__ family; TYPE_3__ config; } ;


 scalar_t__ ARRAY_SIZE (void*) ;
 int BUILD_BUG_ON (int) ;
 scalar_t__ CHIP_CAYMAN ;
 int DRM_ERROR (char*,int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;



 scalar_t__ REG_SAFE_BM_SIZE ;
 void* cayman_reg_safe_bm ;
 int evergreen_cs_parse_packet0 (struct radeon_cs_parser*,struct radeon_cs_packet*) ;
 int evergreen_cs_track_init (struct evergreen_cs_track*) ;
 int evergreen_packet3_check (struct radeon_cs_parser*,struct radeon_cs_packet*) ;
 void* evergreen_reg_safe_bm ;
 int kfree (struct evergreen_cs_track*) ;
 struct evergreen_cs_track* kzalloc (int,int ) ;
 int mdelay (int) ;
 int pr_info (char*,int,int ) ;
 int radeon_cs_packet_parse (struct radeon_cs_parser*,struct radeon_cs_packet*,int ) ;

int evergreen_cs_parse(struct radeon_cs_parser *p)
{
 struct radeon_cs_packet pkt;
 struct evergreen_cs_track *track;
 u32 tmp;
 int r;

 if (p->track == ((void*)0)) {

  track = kzalloc(sizeof(*track), GFP_KERNEL);
  if (track == ((void*)0))
   return -ENOMEM;
  evergreen_cs_track_init(track);
  if (p->rdev->family >= CHIP_CAYMAN) {
   tmp = p->rdev->config.cayman.tile_config;
   track->reg_safe_bm = cayman_reg_safe_bm;
  } else {
   tmp = p->rdev->config.evergreen.tile_config;
   track->reg_safe_bm = evergreen_reg_safe_bm;
  }
  BUILD_BUG_ON(ARRAY_SIZE(cayman_reg_safe_bm) != REG_SAFE_BM_SIZE);
  BUILD_BUG_ON(ARRAY_SIZE(evergreen_reg_safe_bm) != REG_SAFE_BM_SIZE);
  switch (tmp & 0xf) {
  case 0:
   track->npipes = 1;
   break;
  case 1:
  default:
   track->npipes = 2;
   break;
  case 2:
   track->npipes = 4;
   break;
  case 3:
   track->npipes = 8;
   break;
  }

  switch ((tmp & 0xf0) >> 4) {
  case 0:
   track->nbanks = 4;
   break;
  case 1:
  default:
   track->nbanks = 8;
   break;
  case 2:
   track->nbanks = 16;
   break;
  }

  switch ((tmp & 0xf00) >> 8) {
  case 0:
   track->group_size = 256;
   break;
  case 1:
  default:
   track->group_size = 512;
   break;
  }

  switch ((tmp & 0xf000) >> 12) {
  case 0:
   track->row_size = 1;
   break;
  case 1:
  default:
   track->row_size = 2;
   break;
  case 2:
   track->row_size = 4;
   break;
  }

  p->track = track;
 }
 do {
  r = radeon_cs_packet_parse(p, &pkt, p->idx);
  if (r) {
   kfree(p->track);
   p->track = ((void*)0);
   return r;
  }
  p->idx += pkt.count + 2;
  switch (pkt.type) {
  case 130:
   r = evergreen_cs_parse_packet0(p, &pkt);
   break;
  case 129:
   break;
  case 128:
   r = evergreen_packet3_check(p, &pkt);
   break;
  default:
   DRM_ERROR("Unknown packet type %d !\n", pkt.type);
   kfree(p->track);
   p->track = ((void*)0);
   return -EINVAL;
  }
  if (r) {
   kfree(p->track);
   p->track = ((void*)0);
   return r;
  }
 } while (p->idx < p->chunk_ib->length_dw);






 kfree(p->track);
 p->track = ((void*)0);
 return 0;
}
