
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_sec2 {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_sec2_new_ (struct nvkm_device*,int,int ,struct nvkm_sec2**) ;

int
gp102_sec2_new(struct nvkm_device *device, int index,
        struct nvkm_sec2 **psec2)
{
 return nvkm_sec2_new_(device, index, 0, psec2);
}
