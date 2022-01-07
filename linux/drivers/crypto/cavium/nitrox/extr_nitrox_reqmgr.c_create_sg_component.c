
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct nitrox_softreq {int gfp; struct nitrox_device* ndev; } ;
struct nitrox_sgtable {size_t sgcomp_len; int sgcomp_dma; struct nitrox_sgcomp* sgcomp; struct scatterlist* sg; } ;
struct nitrox_sgcomp {int * dma; int * len; } ;
struct nitrox_device {int dummy; } ;
typedef int dma_addr_t ;


 int DEV (struct nitrox_device*) ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be64 (int ) ;
 int dma_map_single (int ,struct nitrox_sgcomp*,size_t,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int kfree (struct nitrox_sgcomp*) ;
 struct nitrox_sgcomp* kzalloc (size_t,int ) ;
 int roundup (int,int) ;
 int sg_dma_address (struct scatterlist*) ;
 int sg_dma_len (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;

__attribute__((used)) static int create_sg_component(struct nitrox_softreq *sr,
          struct nitrox_sgtable *sgtbl, int map_nents)
{
 struct nitrox_device *ndev = sr->ndev;
 struct nitrox_sgcomp *sgcomp;
 struct scatterlist *sg;
 dma_addr_t dma;
 size_t sz_comp;
 int i, j, nr_sgcomp;

 nr_sgcomp = roundup(map_nents, 4) / 4;


 sz_comp = nr_sgcomp * sizeof(*sgcomp);
 sgcomp = kzalloc(sz_comp, sr->gfp);
 if (!sgcomp)
  return -ENOMEM;

 sgtbl->sgcomp = sgcomp;

 sg = sgtbl->sg;

 for (i = 0; i < nr_sgcomp; i++) {
  for (j = 0; j < 4 && sg; j++) {
   sgcomp[i].len[j] = cpu_to_be16(sg_dma_len(sg));
   sgcomp[i].dma[j] = cpu_to_be64(sg_dma_address(sg));
   sg = sg_next(sg);
  }
 }

 dma = dma_map_single(DEV(ndev), sgtbl->sgcomp, sz_comp, DMA_TO_DEVICE);
 if (dma_mapping_error(DEV(ndev), dma)) {
  kfree(sgtbl->sgcomp);
  sgtbl->sgcomp = ((void*)0);
  return -ENOMEM;
 }

 sgtbl->sgcomp_dma = dma;
 sgtbl->sgcomp_len = sz_comp;

 return 0;
}
