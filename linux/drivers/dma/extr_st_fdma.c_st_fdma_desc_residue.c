
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virt_dma_desc {int dummy; } ;
struct st_fdma_desc {int n_nodes; TYPE_2__* node; } ;
struct st_fdma_chan {struct st_fdma_desc* fdesc; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {TYPE_1__* desc; int pdesc; } ;
struct TYPE_3__ {scalar_t__ nbytes; } ;


 int FDMA_CH_CMD_DATA_MASK ;
 int FDMA_CH_CMD_OFST ;
 int FDMA_CNTN_OFST ;
 int fchan_read (struct st_fdma_chan*,int ) ;
 scalar_t__ fnode_read (struct st_fdma_chan*,int ) ;

__attribute__((used)) static size_t st_fdma_desc_residue(struct st_fdma_chan *fchan,
       struct virt_dma_desc *vdesc,
       bool in_progress)
{
 struct st_fdma_desc *fdesc = fchan->fdesc;
 size_t residue = 0;
 dma_addr_t cur_addr = 0;
 int i;

 if (in_progress) {
  cur_addr = fchan_read(fchan, FDMA_CH_CMD_OFST);
  cur_addr &= FDMA_CH_CMD_DATA_MASK;
 }

 for (i = fchan->fdesc->n_nodes - 1 ; i >= 0; i--) {
  if (cur_addr == fdesc->node[i].pdesc) {
   residue += fnode_read(fchan, FDMA_CNTN_OFST);
   break;
  }
  residue += fdesc->node[i].desc->nbytes;
 }

 return residue;
}
