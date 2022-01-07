
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


struct TYPE_12__ {int length_dw; int * ptr; } ;
struct radeon_cs_parser {struct r600_cs_track* track; TYPE_6__ ib; int idx; TYPE_5__* chunk_ib; TYPE_4__* rdev; } ;
struct radeon_cs_packet {int type; scalar_t__ count; } ;
struct r600_cs_track {int group_size; int nbanks; int npipes; } ;
struct TYPE_11__ {int length_dw; } ;
struct TYPE_8__ {int tiling_group_size; int tiling_nbanks; int tiling_npipes; } ;
struct TYPE_7__ {int tiling_group_size; int tiling_nbanks; int tiling_npipes; } ;
struct TYPE_9__ {TYPE_2__ rv770; TYPE_1__ r600; } ;
struct TYPE_10__ {scalar_t__ family; TYPE_3__ config; } ;


 scalar_t__ CHIP_RV740 ;
 scalar_t__ CHIP_RV770 ;
 int DRM_ERROR (char*,int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;



 int kfree (struct r600_cs_track*) ;
 struct r600_cs_track* kzalloc (int,int ) ;
 int mdelay (int) ;
 int pr_info (char*,int,int ) ;
 int r600_cs_parse_packet0 (struct radeon_cs_parser*,struct radeon_cs_packet*) ;
 int r600_cs_track_init (struct r600_cs_track*) ;
 int r600_packet3_check (struct radeon_cs_parser*,struct radeon_cs_packet*) ;
 int radeon_cs_packet_parse (struct radeon_cs_parser*,struct radeon_cs_packet*,int ) ;

int r600_cs_parse(struct radeon_cs_parser *p)
{
 struct radeon_cs_packet pkt;
 struct r600_cs_track *track;
 int r;

 if (p->track == ((void*)0)) {

  track = kzalloc(sizeof(*track), GFP_KERNEL);
  if (track == ((void*)0))
   return -ENOMEM;
  r600_cs_track_init(track);
  if (p->rdev->family < CHIP_RV770) {
   track->npipes = p->rdev->config.r600.tiling_npipes;
   track->nbanks = p->rdev->config.r600.tiling_nbanks;
   track->group_size = p->rdev->config.r600.tiling_group_size;
  } else if (p->rdev->family <= CHIP_RV740) {
   track->npipes = p->rdev->config.rv770.tiling_npipes;
   track->nbanks = p->rdev->config.rv770.tiling_nbanks;
   track->group_size = p->rdev->config.rv770.tiling_group_size;
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
   r = r600_cs_parse_packet0(p, &pkt);
   break;
  case 129:
   break;
  case 128:
   r = r600_packet3_check(p, &pkt);
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
