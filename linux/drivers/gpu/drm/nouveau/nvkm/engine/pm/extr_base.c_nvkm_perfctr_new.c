
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct nvkm_perfsig {int dummy; } ;
struct nvkm_perfdom {int signal; int list; } ;
struct nvkm_perfctr {int slot; int head; int ** source; struct nvkm_perfsig** signal; int logic_op; int domain; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_perfctr* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int
nvkm_perfctr_new(struct nvkm_perfdom *dom, int slot, u8 domain,
   struct nvkm_perfsig *signal[4], u64 source[4][8],
   u16 logic_op, struct nvkm_perfctr **pctr)
{
 struct nvkm_perfctr *ctr;
 int i, j;

 if (!dom)
  return -EINVAL;

 ctr = *pctr = kzalloc(sizeof(*ctr), GFP_KERNEL);
 if (!ctr)
  return -ENOMEM;

 ctr->domain = domain;
 ctr->logic_op = logic_op;
 ctr->slot = slot;
 for (i = 0; i < 4; i++) {
  if (signal[i]) {
   ctr->signal[i] = signal[i] - dom->signal;
   for (j = 0; j < 8; j++)
    ctr->source[i][j] = source[i][j];
  }
 }
 list_add_tail(&ctr->head, &dom->list);

 return 0;
}
