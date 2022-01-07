
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isert_np {int * cm_id; } ;
typedef enum rdma_cm_event_type { ____Placeholder_rdma_cm_event_type } rdma_cm_event_type ;


 int IS_ERR (int *) ;
 int PTR_ERR (int *) ;


 int isert_dbg (char*,int ,int,struct isert_np*) ;
 int isert_err (char*,struct isert_np*,int) ;
 int * isert_setup_id (struct isert_np*) ;
 int rdma_event_msg (int) ;

__attribute__((used)) static int
isert_np_cma_handler(struct isert_np *isert_np,
       enum rdma_cm_event_type event)
{
 isert_dbg("%s (%d): isert np %p\n",
    rdma_event_msg(event), event, isert_np);

 switch (event) {
 case 128:
  isert_np->cm_id = ((void*)0);
  break;
 case 129:
  isert_np->cm_id = isert_setup_id(isert_np);
  if (IS_ERR(isert_np->cm_id)) {
   isert_err("isert np %p setup id failed: %ld\n",
      isert_np, PTR_ERR(isert_np->cm_id));
   isert_np->cm_id = ((void*)0);
  }
  break;
 default:
  isert_err("isert np %p Unexpected event %d\n",
     isert_np, event);
 }

 return -1;
}
