
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_sw_chan {int dummy; } ;
struct nv04_sw_chan {int ref; } ;


 int atomic_set (int *,int) ;
 struct nv04_sw_chan* nv04_sw_chan (struct nvkm_sw_chan*) ;

__attribute__((used)) static bool
nv04_sw_chan_mthd(struct nvkm_sw_chan *base, int subc, u32 mthd, u32 data)
{
 struct nv04_sw_chan *chan = nv04_sw_chan(base);

 switch (mthd) {
 case 0x0150:
  atomic_set(&chan->ref, data);
  return 1;
 default:
  break;
 }

 return 0;
}
