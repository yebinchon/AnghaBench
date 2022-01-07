
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
struct TYPE_3__ {int uv; } ;


 struct gk20a_volt* gk20a_volt (struct nvkm_volt*) ;
 int nvkm_debug (struct nvkm_subdev*,char*,int ) ;
 int regulator_set_voltage (int ,int ,int) ;

__attribute__((used)) static int
gk20a_volt_vid_set(struct nvkm_volt *base, u8 vid)
{
 struct gk20a_volt *volt = gk20a_volt(base);
 struct nvkm_subdev *subdev = &volt->base.subdev;

 nvkm_debug(subdev, "set voltage as %duv\n", volt->base.vid[vid].uv);
 return regulator_set_voltage(volt->vdd, volt->base.vid[vid].uv, 1200000);
}
