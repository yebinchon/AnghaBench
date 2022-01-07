
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {int dummy; } ;
struct nvkm_mxm {int action; struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;


 int MXM_SANITISE_DCB ;
 int mxm_dcb_sanitise (struct nvkm_mxm*) ;
 int nvkm_mxm_new_ (struct nvkm_device*,int,struct nvkm_mxm**) ;

int
nv50_mxm_new(struct nvkm_device *device, int index, struct nvkm_subdev **pmxm)
{
 struct nvkm_mxm *mxm;
 int ret;

 ret = nvkm_mxm_new_(device, index, &mxm);
 if (mxm)
  *pmxm = &mxm->subdev;
 if (ret)
  return ret;

 if (mxm->action & MXM_SANITISE_DCB)
  mxm_dcb_sanitise(mxm);

 return 0;
}
