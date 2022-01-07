
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_outp {int dummy; } ;
struct nvkm_disp {int dummy; } ;
struct dcb_output {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_outp* kzalloc (int,int ) ;
 int nvkm_outp ;
 int nvkm_outp_ctor (int *,struct nvkm_disp*,int,struct dcb_output*,struct nvkm_outp*) ;

int
nvkm_outp_new(struct nvkm_disp *disp, int index, struct dcb_output *dcbE,
       struct nvkm_outp **poutp)
{
 if (!(*poutp = kzalloc(sizeof(**poutp), GFP_KERNEL)))
  return -ENOMEM;
 return nvkm_outp_ctor(&nvkm_outp, disp, index, dcbE, *poutp);
}
