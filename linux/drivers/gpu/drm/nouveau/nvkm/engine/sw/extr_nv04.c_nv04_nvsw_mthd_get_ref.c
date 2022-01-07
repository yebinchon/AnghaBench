
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_nvsw {int chan; } ;
struct nv04_sw_chan {int ref; } ;
struct nv04_nvsw_get_ref_v0 {int ref; } ;


 int ENOSYS ;
 int atomic_read (int *) ;
 struct nv04_sw_chan* nv04_sw_chan (int ) ;
 int nvif_unpack (int,void**,int *,struct nv04_nvsw_get_ref_v0,int ,int ,int) ;

__attribute__((used)) static int
nv04_nvsw_mthd_get_ref(struct nvkm_nvsw *nvsw, void *data, u32 size)
{
 struct nv04_sw_chan *chan = nv04_sw_chan(nvsw->chan);
 union {
  struct nv04_nvsw_get_ref_v0 v0;
 } *args = data;
 int ret = -ENOSYS;

 if (!(ret = nvif_unpack(ret, &data, &size, args->v0, 0, 0, 0))) {
  args->v0.ref = atomic_read(&chan->ref);
 }

 return ret;
}
