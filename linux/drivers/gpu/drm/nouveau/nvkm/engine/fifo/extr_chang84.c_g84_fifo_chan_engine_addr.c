
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; } ;
struct nvkm_engine {TYPE_1__ subdev; } ;
 int WARN_ON (int) ;

__attribute__((used)) static int
g84_fifo_chan_engine_addr(struct nvkm_engine *engine)
{
 switch (engine->subdev.index) {
 case 136:
 case 129 : return -1;
 case 135 : return 0x0020;
 case 128 :
 case 133: return 0x0040;
 case 134 :
 case 132 : return 0x0060;
 case 139 :
 case 131 : return 0x0080;
 case 137:
 case 130 : return 0x00a0;
 case 138 : return 0x00c0;
 default:
  WARN_ON(1);
  return -1;
 }
}
