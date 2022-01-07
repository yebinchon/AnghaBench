
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; } ;
struct nvkm_engine {TYPE_1__ subdev; } ;
 int WARN_ON (int) ;

__attribute__((used)) static int
g84_fifo_chan_engine(struct nvkm_engine *engine)
{
 switch (engine->subdev.index) {
 case 134 : return 0;
 case 133 :
 case 131 : return 1;
 case 136 : return 2;
 case 128 :
 case 132: return 3;
 case 135:
 case 129 : return 4;
 case 137 :
 case 130 : return 5;
 default:
  WARN_ON(1);
  return 0;
 }
}
