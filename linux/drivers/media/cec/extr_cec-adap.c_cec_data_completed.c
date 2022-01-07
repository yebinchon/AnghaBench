
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_data {int completed; int msg; scalar_t__ fh; int c; scalar_t__ blocking; int xfer_list; } ;


 int cec_queue_msg_fh (scalar_t__,int *) ;
 int complete (int *) ;
 int kfree (struct cec_data*) ;
 int list_del (int *) ;

__attribute__((used)) static void cec_data_completed(struct cec_data *data)
{
 if (data->fh)
  list_del(&data->xfer_list);

 if (data->blocking) {




  data->completed = 1;
  complete(&data->c);
 } else {




  if (data->fh)
   cec_queue_msg_fh(data->fh, &data->msg);
  kfree(data);
 }
}
