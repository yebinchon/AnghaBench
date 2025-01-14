
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct pipe_state {int pipe_0x0040; int pipe_0x0000; int pipe_0x4400; int pipe_0x7800; int pipe_0x7400; int pipe_0x7000; int pipe_0x6c00; int pipe_0x6800; int pipe_0x6400; int pipe_0x0200; } ;
struct nvkm_device {int dummy; } ;
struct nv10_gr_chan {struct pipe_state pipe_state; struct nv10_gr* gr; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv10_gr {TYPE_3__ base; } ;


 int NV10_PGRAPH_PIPE_ADDRESS ;
 int NV10_PGRAPH_PIPE_DATA ;
 int NV10_PGRAPH_XFMODE0 ;
 int NV10_PGRAPH_XFMODE1 ;
 int PIPE_RESTORE (struct nv10_gr*,int ,int) ;
 int nv04_gr_idle (TYPE_3__*) ;
 int nvkm_rd32 (struct nvkm_device*,int ) ;
 int nvkm_wr32 (struct nvkm_device*,int ,int) ;

__attribute__((used)) static void
nv10_gr_load_pipe(struct nv10_gr_chan *chan)
{
 struct nv10_gr *gr = chan->gr;
 struct pipe_state *pipe = &chan->pipe_state;
 struct nvkm_device *device = gr->base.engine.subdev.device;
 u32 xfmode0, xfmode1;
 int i;

 nv04_gr_idle(&gr->base);

 xfmode0 = nvkm_rd32(device, NV10_PGRAPH_XFMODE0);
 xfmode1 = nvkm_rd32(device, NV10_PGRAPH_XFMODE1);
 nvkm_wr32(device, NV10_PGRAPH_XFMODE0, 0x10000000);
 nvkm_wr32(device, NV10_PGRAPH_XFMODE1, 0x00000000);
 nvkm_wr32(device, NV10_PGRAPH_PIPE_ADDRESS, 0x000064c0);
 for (i = 0; i < 4; i++)
  nvkm_wr32(device, NV10_PGRAPH_PIPE_DATA, 0x3f800000);
 for (i = 0; i < 4; i++)
  nvkm_wr32(device, NV10_PGRAPH_PIPE_DATA, 0x00000000);

 nvkm_wr32(device, NV10_PGRAPH_PIPE_ADDRESS, 0x00006ab0);
 for (i = 0; i < 3; i++)
  nvkm_wr32(device, NV10_PGRAPH_PIPE_DATA, 0x3f800000);

 nvkm_wr32(device, NV10_PGRAPH_PIPE_ADDRESS, 0x00006a80);
 for (i = 0; i < 3; i++)
  nvkm_wr32(device, NV10_PGRAPH_PIPE_DATA, 0x00000000);

 nvkm_wr32(device, NV10_PGRAPH_PIPE_ADDRESS, 0x00000040);
 nvkm_wr32(device, NV10_PGRAPH_PIPE_DATA, 0x00000008);


 PIPE_RESTORE(gr, pipe->pipe_0x0200, 0x0200);
 nv04_gr_idle(&gr->base);


 nvkm_wr32(device, NV10_PGRAPH_XFMODE0, xfmode0);
 nvkm_wr32(device, NV10_PGRAPH_XFMODE1, xfmode1);
 PIPE_RESTORE(gr, pipe->pipe_0x6400, 0x6400);
 PIPE_RESTORE(gr, pipe->pipe_0x6800, 0x6800);
 PIPE_RESTORE(gr, pipe->pipe_0x6c00, 0x6c00);
 PIPE_RESTORE(gr, pipe->pipe_0x7000, 0x7000);
 PIPE_RESTORE(gr, pipe->pipe_0x7400, 0x7400);
 PIPE_RESTORE(gr, pipe->pipe_0x7800, 0x7800);
 PIPE_RESTORE(gr, pipe->pipe_0x4400, 0x4400);
 PIPE_RESTORE(gr, pipe->pipe_0x0000, 0x0000);
 PIPE_RESTORE(gr, pipe->pipe_0x0040, 0x0040);
 nv04_gr_idle(&gr->base);
}
