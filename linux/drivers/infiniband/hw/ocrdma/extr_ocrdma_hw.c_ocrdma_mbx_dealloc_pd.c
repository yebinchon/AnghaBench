
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_pd {int id; } ;
struct ocrdma_mqe {int dummy; } ;
struct ocrdma_dev {int dummy; } ;
struct ocrdma_dealloc_pd {int id; } ;


 int ENOMEM ;
 int OCRDMA_CMD_DEALLOC_PD ;
 int kfree (struct ocrdma_dealloc_pd*) ;
 struct ocrdma_dealloc_pd* ocrdma_init_emb_mqe (int ,int) ;
 int ocrdma_mbx_cmd (struct ocrdma_dev*,struct ocrdma_mqe*) ;

int ocrdma_mbx_dealloc_pd(struct ocrdma_dev *dev, struct ocrdma_pd *pd)
{
 int status = -ENOMEM;
 struct ocrdma_dealloc_pd *cmd;

 cmd = ocrdma_init_emb_mqe(OCRDMA_CMD_DEALLOC_PD, sizeof(*cmd));
 if (!cmd)
  return status;
 cmd->id = pd->id;
 status = ocrdma_mbx_cmd(dev, (struct ocrdma_mqe *)cmd);
 kfree(cmd);
 return status;
}
