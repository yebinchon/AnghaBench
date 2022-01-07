
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; } ;
struct nvkm_engine {TYPE_1__ subdev; } ;






 int WARN_ON (int) ;

__attribute__((used)) static int
nv50_fifo_chan_engine_addr(struct nvkm_engine *engine)
{
 switch (engine->subdev.index) {
 case 131:
 case 128 : return -1;
 case 130 : return 0x0000;
 case 129 : return 0x0060;
 default:
  WARN_ON(1);
  return -1;
 }
}
