
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_nvdec {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_nvdec_new_ (struct nvkm_device*,int,struct nvkm_nvdec**) ;

int
gp102_nvdec_new(struct nvkm_device *device, int index,
  struct nvkm_nvdec **pnvdec)
{
 return nvkm_nvdec_new_(device, index, pnvdec);
}
