
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_edma_chunk {struct dw_edma_burst* burst; scalar_t__ bursts_alloc; } ;
struct dw_edma_burst {int list; } ;


 int GFP_NOWAIT ;
 int INIT_LIST_HEAD (int *) ;
 struct dw_edma_burst* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct dw_edma_burst *dw_edma_alloc_burst(struct dw_edma_chunk *chunk)
{
 struct dw_edma_burst *burst;

 burst = kzalloc(sizeof(*burst), GFP_NOWAIT);
 if (unlikely(!burst))
  return ((void*)0);

 INIT_LIST_HEAD(&burst->list);
 if (chunk->burst) {

  chunk->bursts_alloc++;
  list_add_tail(&burst->list, &chunk->burst->list);
 } else {

  chunk->bursts_alloc = 0;
  chunk->burst = burst;
 }

 return burst;
}
