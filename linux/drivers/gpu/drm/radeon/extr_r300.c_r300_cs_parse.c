
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct radeon_cs_parser {TYPE_4__* rdev; int idx; TYPE_1__* chunk_ib; struct r100_cs_track* track; } ;
struct radeon_cs_packet {int type; scalar_t__ count; } ;
struct r100_cs_track {int dummy; } ;
struct TYPE_6__ {int reg_safe_bm_size; int reg_safe_bm; } ;
struct TYPE_7__ {TYPE_2__ r300; } ;
struct TYPE_8__ {TYPE_3__ config; } ;
struct TYPE_5__ {int length_dw; } ;


 int DRM_ERROR (char*,int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;



 struct r100_cs_track* kzalloc (int,int ) ;
 int r100_cs_parse_packet0 (struct radeon_cs_parser*,struct radeon_cs_packet*,int ,int ,int *) ;
 int r100_cs_track_clear (TYPE_4__*,struct r100_cs_track*) ;
 int r300_packet0_check ;
 int r300_packet3_check (struct radeon_cs_parser*,struct radeon_cs_packet*) ;
 int radeon_cs_packet_parse (struct radeon_cs_parser*,struct radeon_cs_packet*,int ) ;

int r300_cs_parse(struct radeon_cs_parser *p)
{
 struct radeon_cs_packet pkt;
 struct r100_cs_track *track;
 int r;

 track = kzalloc(sizeof(*track), GFP_KERNEL);
 if (track == ((void*)0))
  return -ENOMEM;
 r100_cs_track_clear(p->rdev, track);
 p->track = track;
 do {
  r = radeon_cs_packet_parse(p, &pkt, p->idx);
  if (r) {
   return r;
  }
  p->idx += pkt.count + 2;
  switch (pkt.type) {
  case 130:
   r = r100_cs_parse_packet0(p, &pkt,
        p->rdev->config.r300.reg_safe_bm,
        p->rdev->config.r300.reg_safe_bm_size,
        &r300_packet0_check);
   break;
  case 129:
   break;
  case 128:
   r = r300_packet3_check(p, &pkt);
   break;
  default:
   DRM_ERROR("Unknown packet type %d !\n", pkt.type);
   return -EINVAL;
  }
  if (r) {
   return r;
  }
 } while (p->idx < p->chunk_ib->length_dw);
 return 0;
}
