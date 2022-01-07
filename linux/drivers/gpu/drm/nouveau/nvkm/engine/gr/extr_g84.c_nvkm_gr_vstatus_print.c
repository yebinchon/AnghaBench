
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_bitfield {scalar_t__ name; } ;
struct TYPE_3__ {struct nvkm_subdev subdev; } ;
struct TYPE_4__ {TYPE_1__ engine; } ;
struct nv50_gr {TYPE_2__ base; } ;
typedef int msg ;


 int nvkm_error (struct nvkm_subdev*,char*,int,int,char*) ;
 int nvkm_snprintbf (char*,int,struct nvkm_bitfield const*,int) ;

__attribute__((used)) static void
nvkm_gr_vstatus_print(struct nv50_gr *gr, int r,
        const struct nvkm_bitfield *units, u32 status)
{
 struct nvkm_subdev *subdev = &gr->base.engine.subdev;
 u32 stat = status;
 u8 mask = 0x00;
 char msg[64];
 int i;

 for (i = 0; units[i].name && status; i++) {
  if ((status & 7) == 1)
   mask |= (1 << i);
  status >>= 3;
 }

 nvkm_snprintbf(msg, sizeof(msg), units, mask);
 nvkm_error(subdev, "PGRAPH_VSTATUS%d: %08x [%s]\n", r, stat, msg);
}
