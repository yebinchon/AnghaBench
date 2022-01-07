
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct TYPE_3__ {int* ptr; } ;
struct radeon_cs_parser {int filp; TYPE_2__* rdev; scalar_t__ track; TYPE_1__ ib; } ;
struct radeon_cs_packet {int idx; int opcode; int count; } ;
struct radeon_bo_list {int robj; int gpu_offset; } ;
struct r100_cs_track {int vap_vf_cntl; int immd_dwords; } ;
struct TYPE_4__ {int cmask_filp; int hyperz_filp; } ;


 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int r100_cs_track_check (TYPE_2__*,struct r100_cs_track*) ;
 int r100_cs_track_check_pkt3_indx_buffer (struct radeon_cs_parser*,struct radeon_cs_packet*,int ) ;
 int r100_packet3_load_vbpntr (struct radeon_cs_parser*,struct radeon_cs_packet*,unsigned int) ;
 int radeon_cs_dump_packet (struct radeon_cs_parser*,struct radeon_cs_packet*) ;
 int radeon_cs_packet_next_reloc (struct radeon_cs_parser*,struct radeon_bo_list**,int ) ;
 int radeon_get_ib_value (struct radeon_cs_parser*,unsigned int) ;

__attribute__((used)) static int r300_packet3_check(struct radeon_cs_parser *p,
         struct radeon_cs_packet *pkt)
{
 struct radeon_bo_list *reloc;
 struct r100_cs_track *track;
 volatile uint32_t *ib;
 unsigned idx;
 int r;

 ib = p->ib.ptr;
 idx = pkt->idx + 1;
 track = (struct r100_cs_track *)p->track;
 switch(pkt->opcode) {
 case 130:
  r = r100_packet3_load_vbpntr(p, pkt, idx);
  if (r)
   return r;
  break;
 case 129:
  r = radeon_cs_packet_next_reloc(p, &reloc, 0);
  if (r) {
   DRM_ERROR("No reloc for packet3 %d\n", pkt->opcode);
   radeon_cs_dump_packet(p, pkt);
   return r;
  }
  ib[idx+1] = radeon_get_ib_value(p, idx + 1) + ((u32)reloc->gpu_offset);
  r = r100_cs_track_check_pkt3_indx_buffer(p, pkt, reloc->robj);
  if (r) {
   return r;
  }
  break;

 case 136:



  if (((radeon_get_ib_value(p, idx + 1) >> 4) & 0x3) != 3) {
   DRM_ERROR("PRIM_WALK must be 3 for IMMD draw\n");
   return -EINVAL;
  }
  track->vap_vf_cntl = radeon_get_ib_value(p, idx + 1);
  track->immd_dwords = pkt->count - 1;
  r = r100_cs_track_check(p->rdev, track);
  if (r) {
   return r;
  }
  break;
 case 135:



  if (((radeon_get_ib_value(p, idx) >> 4) & 0x3) != 3) {
   DRM_ERROR("PRIM_WALK must be 3 for IMMD draw\n");
   return -EINVAL;
  }
  track->vap_vf_cntl = radeon_get_ib_value(p, idx);
  track->immd_dwords = pkt->count;
  r = r100_cs_track_check(p->rdev, track);
  if (r) {
   return r;
  }
  break;
 case 132:
  track->vap_vf_cntl = radeon_get_ib_value(p, idx + 1);
  r = r100_cs_track_check(p->rdev, track);
  if (r) {
   return r;
  }
  break;
 case 131:
  track->vap_vf_cntl = radeon_get_ib_value(p, idx);
  r = r100_cs_track_check(p->rdev, track);
  if (r) {
   return r;
  }
  break;
 case 134:
  track->vap_vf_cntl = radeon_get_ib_value(p, idx + 1);
  r = r100_cs_track_check(p->rdev, track);
  if (r) {
   return r;
  }
  break;
 case 133:
  track->vap_vf_cntl = radeon_get_ib_value(p, idx);
  r = r100_cs_track_check(p->rdev, track);
  if (r) {
   return r;
  }
  break;
 case 138:
 case 137:
  if (p->rdev->hyperz_filp != p->filp)
   return -EINVAL;
  break;
 case 139:
  if (p->rdev->cmask_filp != p->filp)
   return -EINVAL;
  break;
 case 128:
  break;
 default:
  DRM_ERROR("Packet3 opcode %x not supported\n", pkt->opcode);
  return -EINVAL;
 }
 return 0;
}
