
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct nvkm_mxm {TYPE_2__ subdev; } ;
struct nvkm_bios {int dummy; } ;
struct TYPE_6__ {int outp_type; int conn_type; int dig_conn; } ;
struct context {int* outp; TYPE_3__ desc; } ;
struct TYPE_4__ {struct nvkm_bios* bios; } ;


 int mxm_match_tmds_partner ;
 int mxm_sor_map (struct nvkm_bios*,int ) ;
 scalar_t__ mxms_foreach (struct nvkm_mxm*,int,int ,struct context*) ;
 int mxms_output_device (struct nvkm_mxm*,int*,TYPE_3__*) ;

__attribute__((used)) static bool
mxm_match_dcb(struct nvkm_mxm *mxm, u8 *data, void *info)
{
 struct nvkm_bios *bios = mxm->subdev.device->bios;
 struct context *ctx = info;
 u64 desc = *(u64 *)data;

 mxms_output_device(mxm, data, &ctx->desc);


 if ((ctx->outp[0] & 0x0000000f) != ctx->desc.outp_type)
  return 1;





 if ((desc & 0x00000000000000f0) >= 0x20) {

  u8 link = mxm_sor_map(bios, ctx->desc.dig_conn);
  if ((ctx->outp[0] & 0x0f000000) != (link & 0x0f) << 24)
   return 1;


  link = (link & 0x30) >> 4;
  if ((link & ((ctx->outp[1] & 0x00000030) >> 4)) != link)
   return 1;
 }






 data[0] &= ~0xf0;
 if (ctx->desc.outp_type == 6 && ctx->desc.conn_type == 6 &&
     mxms_foreach(mxm, 0x01, mxm_match_tmds_partner, ctx)) {
  data[0] |= 0x20;
 } else {
  data[0] |= 0xf0;
 }

 return 0;
}
