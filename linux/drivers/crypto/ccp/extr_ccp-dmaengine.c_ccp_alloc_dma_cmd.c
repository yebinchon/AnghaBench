
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccp_dma_cmd {int dummy; } ;
struct ccp_dma_chan {TYPE_1__* ccp; } ;
struct TYPE_2__ {int dma_cmd_cache; } ;


 int GFP_NOWAIT ;
 struct ccp_dma_cmd* kmem_cache_alloc (int ,int ) ;
 int memset (struct ccp_dma_cmd*,int ,int) ;

__attribute__((used)) static struct ccp_dma_cmd *ccp_alloc_dma_cmd(struct ccp_dma_chan *chan)
{
 struct ccp_dma_cmd *cmd;

 cmd = kmem_cache_alloc(chan->ccp->dma_cmd_cache, GFP_NOWAIT);
 if (cmd)
  memset(cmd, 0, sizeof(*cmd));

 return cmd;
}
