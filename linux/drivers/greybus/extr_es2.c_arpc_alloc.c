
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct arpc {struct arpc* req; int response_received; int data; int size; int type; void* resp; int list; } ;


 int ARPC_OUT_SIZE_MAX ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int cpu_to_le16 (int) ;
 int init_completion (int *) ;
 int kfree (struct arpc*) ;
 void* kzalloc (int,int ) ;
 int memcpy (int ,void*,int) ;

__attribute__((used)) static struct arpc *arpc_alloc(void *payload, u16 size, u8 type)
{
 struct arpc *rpc;

 if (size + sizeof(*rpc->req) > ARPC_OUT_SIZE_MAX)
  return ((void*)0);

 rpc = kzalloc(sizeof(*rpc), GFP_KERNEL);
 if (!rpc)
  return ((void*)0);

 INIT_LIST_HEAD(&rpc->list);
 rpc->req = kzalloc(sizeof(*rpc->req) + size, GFP_KERNEL);
 if (!rpc->req)
  goto err_free_rpc;

 rpc->resp = kzalloc(sizeof(*rpc->resp), GFP_KERNEL);
 if (!rpc->resp)
  goto err_free_req;

 rpc->req->type = type;
 rpc->req->size = cpu_to_le16(sizeof(*rpc->req) + size);
 memcpy(rpc->req->data, payload, size);

 init_completion(&rpc->response_received);

 return rpc;

err_free_req:
 kfree(rpc->req);
err_free_rpc:
 kfree(rpc);

 return ((void*)0);
}
