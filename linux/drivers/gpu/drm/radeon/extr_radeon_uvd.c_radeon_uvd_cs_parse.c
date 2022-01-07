
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_cs_parser {int idx; TYPE_1__* chunk_ib; int * chunk_relocs; } ;
struct radeon_cs_packet {int type; int count; } ;
struct TYPE_2__ {int length_dw; } ;


 int DRM_ERROR (char*,...) ;
 int EINVAL ;


 int radeon_cs_packet_parse (struct radeon_cs_parser*,struct radeon_cs_packet*,int) ;
 int radeon_uvd_cs_reg (struct radeon_cs_parser*,struct radeon_cs_packet*,int*,int*,unsigned int*,int*) ;

int radeon_uvd_cs_parse(struct radeon_cs_parser *p)
{
 struct radeon_cs_packet pkt;
 int r, data0 = 0, data1 = 0;


 bool has_msg_cmd = 0;


 unsigned buf_sizes[] = {
  [0x00000000] = 2048,
  [0x00000001] = 32 * 1024 * 1024,
  [0x00000002] = 2048 * 1152 * 3,
  [0x00000003] = 2048,
 };

 if (p->chunk_ib->length_dw % 16) {
  DRM_ERROR("UVD IB length (%d) not 16 dwords aligned!\n",
     p->chunk_ib->length_dw);
  return -EINVAL;
 }

 if (p->chunk_relocs == ((void*)0)) {
  DRM_ERROR("No relocation chunk !\n");
  return -EINVAL;
 }


 do {
  r = radeon_cs_packet_parse(p, &pkt, p->idx);
  if (r)
   return r;
  switch (pkt.type) {
  case 129:
   r = radeon_uvd_cs_reg(p, &pkt, &data0, &data1,
           buf_sizes, &has_msg_cmd);
   if (r)
    return r;
   break;
  case 128:
   p->idx += pkt.count + 2;
   break;
  default:
   DRM_ERROR("Unknown packet type %d !\n", pkt.type);
   return -EINVAL;
  }
 } while (p->idx < p->chunk_ib->length_dw);

 if (!has_msg_cmd) {
  DRM_ERROR("UVD-IBs need a msg command!\n");
  return -EINVAL;
 }

 return 0;
}
