
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cmd; } ;
struct pvrdma_cmd_destroy_uc {int ctx_handle; TYPE_2__ hdr; } ;
union pvrdma_cmd_req {struct pvrdma_cmd_destroy_uc destroy_uc; } ;
struct pvrdma_ucontext {int uar; TYPE_3__* dev; int ctx_handle; } ;
struct ib_ucontext {int device; } ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int PVRDMA_CMD_DESTROY_UC ;
 int dev_warn (int *,char*,int) ;
 int pvrdma_cmd_post (TYPE_3__*,union pvrdma_cmd_req*,int *,int ) ;
 int pvrdma_uar_free (int ,int *) ;
 int to_vdev (int ) ;
 struct pvrdma_ucontext* to_vucontext (struct ib_ucontext*) ;

void pvrdma_dealloc_ucontext(struct ib_ucontext *ibcontext)
{
 struct pvrdma_ucontext *context = to_vucontext(ibcontext);
 union pvrdma_cmd_req req = {};
 struct pvrdma_cmd_destroy_uc *cmd = &req.destroy_uc;
 int ret;

 cmd->hdr.cmd = PVRDMA_CMD_DESTROY_UC;
 cmd->ctx_handle = context->ctx_handle;

 ret = pvrdma_cmd_post(context->dev, &req, ((void*)0), 0);
 if (ret < 0)
  dev_warn(&context->dev->pdev->dev,
    "destroy ucontext failed, error: %d\n", ret);


 pvrdma_uar_free(to_vdev(ibcontext->device), &context->uar);
}
