
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_operation {int completion; } ;


 int ECANCELED ;
 int GFP_KERNEL ;
 int gb_operation_cancel (struct gb_operation*,int ) ;
 int gb_operation_request_send (struct gb_operation*,int ,unsigned int,int ) ;
 int gb_operation_result (struct gb_operation*) ;
 int gb_operation_sync_callback ;
 int wait_for_completion_interruptible (int *) ;

int gb_operation_request_send_sync_timeout(struct gb_operation *operation,
        unsigned int timeout)
{
 int ret;

 ret = gb_operation_request_send(operation, gb_operation_sync_callback,
     timeout, GFP_KERNEL);
 if (ret)
  return ret;

 ret = wait_for_completion_interruptible(&operation->completion);
 if (ret < 0) {

  gb_operation_cancel(operation, -ECANCELED);
 }

 return gb_operation_result(operation);
}
