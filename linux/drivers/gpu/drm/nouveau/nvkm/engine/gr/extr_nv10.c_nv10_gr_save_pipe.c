
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pipe_state {int pipe_0x0000; int pipe_0x0040; int pipe_0x7800; int pipe_0x7400; int pipe_0x7000; int pipe_0x6c00; int pipe_0x6800; int pipe_0x6400; int pipe_0x0200; int pipe_0x4400; } ;
struct nvkm_device {int dummy; } ;
struct nv10_gr_chan {struct pipe_state pipe_state; struct nv10_gr* gr; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv10_gr {TYPE_3__ base; } ;


 int PIPE_SAVE (struct nv10_gr*,int ,int) ;

__attribute__((used)) static void
nv10_gr_save_pipe(struct nv10_gr_chan *chan)
{
 struct nv10_gr *gr = chan->gr;
 struct pipe_state *pipe = &chan->pipe_state;
 struct nvkm_device *device = gr->base.engine.subdev.device;

 PIPE_SAVE(gr, pipe->pipe_0x4400, 0x4400);
 PIPE_SAVE(gr, pipe->pipe_0x0200, 0x0200);
 PIPE_SAVE(gr, pipe->pipe_0x6400, 0x6400);
 PIPE_SAVE(gr, pipe->pipe_0x6800, 0x6800);
 PIPE_SAVE(gr, pipe->pipe_0x6c00, 0x6c00);
 PIPE_SAVE(gr, pipe->pipe_0x7000, 0x7000);
 PIPE_SAVE(gr, pipe->pipe_0x7400, 0x7400);
 PIPE_SAVE(gr, pipe->pipe_0x7800, 0x7800);
 PIPE_SAVE(gr, pipe->pipe_0x0040, 0x0040);
 PIPE_SAVE(gr, pipe->pipe_0x0000, 0x0000);
}
