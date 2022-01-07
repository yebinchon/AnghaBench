
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_disp {int dummy; } ;
struct nvkm_conn {int dummy; } ;
struct nvbios_connE {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_conn* kzalloc (int,int ) ;
 int nvkm_conn_ctor (struct nvkm_disp*,int,struct nvbios_connE*,struct nvkm_conn*) ;

int
nvkm_conn_new(struct nvkm_disp *disp, int index, struct nvbios_connE *info,
       struct nvkm_conn **pconn)
{
 if (!(*pconn = kzalloc(sizeof(**pconn), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_conn_ctor(disp, index, info, *pconn);
 return 0;
}
