
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gf100_gr {int* tile; int tpc_total; int screen_tile_row_offset; TYPE_3__ base; } ;


 int nvkm_wr32 (struct nvkm_device*,int,int) ;

void
gf100_grctx_generate_rop_mapping(struct gf100_gr *gr)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 u32 data[6] = {}, data2[2] = {};
 u8 shift, ntpcv;
 int i;


 for (i = 0; i < 32; i++)
  data[i / 6] |= (gr->tile[i] & 0x07) << ((i % 6) * 5);


 shift = 0;
 ntpcv = gr->tpc_total;
 while (!(ntpcv & (1 << 4))) {
  ntpcv <<= 1;
  shift++;
 }

 data2[0] = (ntpcv << 16);
 data2[0] |= (shift << 21);
 data2[0] |= (((1 << (0 + 5)) % ntpcv) << 24);
 for (i = 1; i < 7; i++)
  data2[1] |= ((1 << (i + 5)) % ntpcv) << ((i - 1) * 5);


 nvkm_wr32(device, 0x418bb8, (gr->tpc_total << 8) |
         gr->screen_tile_row_offset);
 for (i = 0; i < 6; i++)
  nvkm_wr32(device, 0x418b08 + (i * 4), data[i]);


 nvkm_wr32(device, 0x419bd0, (gr->tpc_total << 8) |
         gr->screen_tile_row_offset | data2[0]);
 nvkm_wr32(device, 0x419be4, data2[1]);
 for (i = 0; i < 6; i++)
  nvkm_wr32(device, 0x419b00 + (i * 4), data[i]);


 nvkm_wr32(device, 0x4078bc, (gr->tpc_total << 8) |
         gr->screen_tile_row_offset);
 for (i = 0; i < 6; i++)
  nvkm_wr32(device, 0x40780c + (i * 4), data[i]);
}
