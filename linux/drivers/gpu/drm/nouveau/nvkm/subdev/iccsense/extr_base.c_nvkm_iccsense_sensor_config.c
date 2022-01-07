
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {int dummy; } ;
struct nvkm_iccsense_sensor {int config; int addr; int i2c; int id; } ;
struct nvkm_iccsense {struct nvkm_subdev subdev; } ;


 int nv_wr16i2cr (int ,int ,int,int ) ;
 int nvkm_trace (struct nvkm_subdev*,char*,int ,int ) ;

__attribute__((used)) static void
nvkm_iccsense_sensor_config(struct nvkm_iccsense *iccsense,
              struct nvkm_iccsense_sensor *sensor)
{
 struct nvkm_subdev *subdev = &iccsense->subdev;
 nvkm_trace(subdev, "write config of extdev %i: 0x%04x\n", sensor->id, sensor->config);
 nv_wr16i2cr(sensor->i2c, sensor->addr, 0x00, sensor->config);
}
