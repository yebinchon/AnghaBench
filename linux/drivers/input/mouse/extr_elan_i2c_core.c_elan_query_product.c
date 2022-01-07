
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elan_tp_data {int clickpad; int sm_version; int ic_type; int client; TYPE_1__* ops; int product_id; } ;
struct TYPE_2__ {int (* get_product_id ) (int ,int *) ;int (* get_sm_version ) (int ,int *,int *,int *) ;} ;


 int stub1 (int ,int *) ;
 int stub2 (int ,int *,int *,int *) ;

__attribute__((used)) static int elan_query_product(struct elan_tp_data *data)
{
 int error;

 error = data->ops->get_product_id(data->client, &data->product_id);
 if (error)
  return error;

 error = data->ops->get_sm_version(data->client, &data->ic_type,
       &data->sm_version, &data->clickpad);
 if (error)
  return error;

 return 0;
}
