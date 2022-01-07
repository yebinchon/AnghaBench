
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_svc_deferred_request {int work; struct gb_operation* operation; } ;
struct gb_svc {int wq; } ;
struct gb_operation {int connection; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 struct gb_svc* gb_connection_get_data (int ) ;
 int gb_operation_get (struct gb_operation*) ;
 int gb_svc_process_deferred_request ;
 struct gb_svc_deferred_request* kmalloc (int,int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int gb_svc_queue_deferred_request(struct gb_operation *operation)
{
 struct gb_svc *svc = gb_connection_get_data(operation->connection);
 struct gb_svc_deferred_request *dr;

 dr = kmalloc(sizeof(*dr), GFP_KERNEL);
 if (!dr)
  return -ENOMEM;

 gb_operation_get(operation);

 dr->operation = operation;
 INIT_WORK(&dr->work, gb_svc_process_deferred_request);

 queue_work(svc->wq, &dr->work);

 return 0;
}
