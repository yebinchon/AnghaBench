
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_fdma_desc {int n_nodes; TYPE_1__* node; struct st_fdma_chan* fchan; } ;
struct st_fdma_chan {int node_pool; } ;
struct TYPE_2__ {int pdesc; int desc; } ;


 int GFP_NOWAIT ;
 int dma_pool_alloc (int ,int ,int *) ;
 int dma_pool_free (int ,int ,int ) ;
 int kfree (struct st_fdma_desc*) ;
 struct st_fdma_desc* kzalloc (int ,int ) ;
 int node ;
 int struct_size (struct st_fdma_desc*,int ,int) ;

__attribute__((used)) static struct st_fdma_desc *st_fdma_alloc_desc(struct st_fdma_chan *fchan,
            int sg_len)
{
 struct st_fdma_desc *fdesc;
 int i;

 fdesc = kzalloc(struct_size(fdesc, node, sg_len), GFP_NOWAIT);
 if (!fdesc)
  return ((void*)0);

 fdesc->fchan = fchan;
 fdesc->n_nodes = sg_len;
 for (i = 0; i < sg_len; i++) {
  fdesc->node[i].desc = dma_pool_alloc(fchan->node_pool,
    GFP_NOWAIT, &fdesc->node[i].pdesc);
  if (!fdesc->node[i].desc)
   goto err;
 }
 return fdesc;

err:
 while (--i >= 0)
  dma_pool_free(fchan->node_pool, fdesc->node[i].desc,
         fdesc->node[i].pdesc);
 kfree(fdesc);
 return ((void*)0);
}
