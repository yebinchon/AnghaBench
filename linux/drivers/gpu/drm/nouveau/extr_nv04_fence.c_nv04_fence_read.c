
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv04_nvsw_get_ref_v0 {int ref; } ;
struct nouveau_channel {int nvsw; } ;
typedef int args ;


 int NV04_NVSW_GET_REF ;
 int WARN_ON (int ) ;
 int nvif_object_mthd (int *,int ,struct nv04_nvsw_get_ref_v0*,int) ;

__attribute__((used)) static u32
nv04_fence_read(struct nouveau_channel *chan)
{
 struct nv04_nvsw_get_ref_v0 args = {};
 WARN_ON(nvif_object_mthd(&chan->nvsw, NV04_NVSW_GET_REF,
     &args, sizeof(args)));
 return args.ref;
}
