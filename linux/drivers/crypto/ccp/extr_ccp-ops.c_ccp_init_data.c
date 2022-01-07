
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct scatterlist {int dummy; } ;
struct ccp_data {int dm_wa; int sg_wa; } ;
struct ccp_cmd_queue {TYPE_1__* ccp; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int dev; } ;


 int ccp_free_data (struct ccp_data*,struct ccp_cmd_queue*) ;
 int ccp_init_dm_workarea (int *,struct ccp_cmd_queue*,unsigned int,int) ;
 int ccp_init_sg_workarea (int *,int ,struct scatterlist*,int ,int) ;
 int memset (struct ccp_data*,int ,int) ;

__attribute__((used)) static int ccp_init_data(struct ccp_data *data, struct ccp_cmd_queue *cmd_q,
    struct scatterlist *sg, u64 sg_len,
    unsigned int dm_len,
    enum dma_data_direction dir)
{
 int ret;

 memset(data, 0, sizeof(*data));

 ret = ccp_init_sg_workarea(&data->sg_wa, cmd_q->ccp->dev, sg, sg_len,
       dir);
 if (ret)
  goto e_err;

 ret = ccp_init_dm_workarea(&data->dm_wa, cmd_q, dm_len, dir);
 if (ret)
  goto e_err;

 return 0;

e_err:
 ccp_free_data(data, cmd_q);

 return ret;
}
