
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_volt {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct gk20a_volt {struct nvkm_volt base; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int gk20a_cvb_coef ;
 int gk20a_volt_ctor (struct nvkm_device*,int,int ,int ,int ,struct gk20a_volt*) ;
 struct gk20a_volt* kzalloc (int,int ) ;

int
gk20a_volt_new(struct nvkm_device *device, int index, struct nvkm_volt **pvolt)
{
 struct gk20a_volt *volt;

 volt = kzalloc(sizeof(*volt), GFP_KERNEL);
 if (!volt)
  return -ENOMEM;
 *pvolt = &volt->base;

 return gk20a_volt_ctor(device, index, gk20a_cvb_coef,
          ARRAY_SIZE(gk20a_cvb_coef), 0, volt);
}
