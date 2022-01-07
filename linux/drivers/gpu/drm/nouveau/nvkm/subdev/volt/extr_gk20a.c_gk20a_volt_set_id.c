
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct nvkm_volt {int dummy; } ;
struct nvkm_subdev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* vid; struct nvkm_subdev subdev; } ;
struct gk20a_volt {TYPE_2__ base; int vdd; } ;
struct TYPE_3__ {int uv; int vid; } ;


 struct gk20a_volt* gk20a_volt (struct nvkm_volt*) ;
 int gk20a_volt_vid_set (TYPE_2__*,int ) ;
 int nvkm_debug (struct nvkm_subdev*,char*,int,int,int) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int
gk20a_volt_set_id(struct nvkm_volt *base, u8 id, int condition)
{
 struct gk20a_volt *volt = gk20a_volt(base);
 struct nvkm_subdev *subdev = &volt->base.subdev;
 int prev_uv = regulator_get_voltage(volt->vdd);
 int target_uv = volt->base.vid[id].uv;
 int ret;

 nvkm_debug(subdev, "prev=%d, target=%d, condition=%d\n",
     prev_uv, target_uv, condition);
 if (!condition ||
  (condition < 0 && target_uv < prev_uv) ||
  (condition > 0 && target_uv > prev_uv)) {
  ret = gk20a_volt_vid_set(&volt->base, volt->base.vid[id].vid);
 } else {
  ret = 0;
 }

 return ret;
}
