
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_data {int sg_wa; int dm_wa; } ;
struct ccp_cmd_queue {int dummy; } ;


 int ccp_dm_free (int *) ;
 int ccp_sg_free (int *) ;

__attribute__((used)) static void ccp_free_data(struct ccp_data *data, struct ccp_cmd_queue *cmd_q)
{
 ccp_dm_free(&data->dm_wa);
 ccp_sg_free(&data->sg_wa);
}
