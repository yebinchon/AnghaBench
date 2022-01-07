
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_cs_parser {int idx; } ;
struct radeon_cs_packet {int count; int reg; } ;


 int DRM_ERROR (char*,int) ;
 int EINVAL ;





 int radeon_uvd_cs_reloc (struct radeon_cs_parser*,int,int,unsigned int*,int*) ;

__attribute__((used)) static int radeon_uvd_cs_reg(struct radeon_cs_parser *p,
        struct radeon_cs_packet *pkt,
        int *data0, int *data1,
        unsigned buf_sizes[],
        bool *has_msg_cmd)
{
 int i, r;

 p->idx++;
 for (i = 0; i <= pkt->count; ++i) {
  switch (pkt->reg + i*4) {
  case 130:
   *data0 = p->idx;
   break;
  case 129:
   *data1 = p->idx;
   break;
  case 131:
   r = radeon_uvd_cs_reloc(p, *data0, *data1,
      buf_sizes, has_msg_cmd);
   if (r)
    return r;
   break;
  case 132:
  case 128:
   break;
  default:
   DRM_ERROR("Invalid reg 0x%X!\n",
      pkt->reg + i*4);
   return -EINVAL;
  }
  p->idx++;
 }
 return 0;
}
