
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_aes_dev {int * out_sg; int * in_sg; int flags; struct aead_request* aead_req; } ;
struct TYPE_2__ {int (* complete ) (TYPE_1__*,int) ;} ;
struct aead_request {TYPE_1__ base; } ;


 int FLAGS_BUSY ;
 int stub1 (TYPE_1__*,int) ;

__attribute__((used)) static void omap_aes_gcm_finish_req(struct omap_aes_dev *dd, int ret)
{
 struct aead_request *req = dd->aead_req;

 dd->flags &= ~FLAGS_BUSY;
 dd->in_sg = ((void*)0);
 dd->out_sg = ((void*)0);

 req->base.complete(&req->base, ret);
}
