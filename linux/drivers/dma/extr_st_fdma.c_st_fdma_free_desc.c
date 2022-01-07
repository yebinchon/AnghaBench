
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virt_dma_desc {int dummy; } ;
struct st_fdma_desc {int n_nodes; TYPE_2__* node; TYPE_1__* fchan; } ;
struct TYPE_4__ {int pdesc; int desc; } ;
struct TYPE_3__ {int node_pool; } ;


 int dma_pool_free (int ,int ,int ) ;
 int kfree (struct st_fdma_desc*) ;
 struct st_fdma_desc* to_st_fdma_desc (struct virt_dma_desc*) ;

__attribute__((used)) static void st_fdma_free_desc(struct virt_dma_desc *vdesc)
{
 struct st_fdma_desc *fdesc;
 int i;

 fdesc = to_st_fdma_desc(vdesc);
 for (i = 0; i < fdesc->n_nodes; i++)
  dma_pool_free(fdesc->fchan->node_pool, fdesc->node[i].desc,
         fdesc->node[i].pdesc);
 kfree(fdesc);
}
