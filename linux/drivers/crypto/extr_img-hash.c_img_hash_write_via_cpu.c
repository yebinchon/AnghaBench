
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct img_hash_request_ctx {int total; int buffer; scalar_t__ bufcnt; int sg; } ;
struct img_hash_dev {int flags; TYPE_1__* req; } ;
struct TYPE_2__ {int nbytes; int src; } ;


 int DRIVER_FLAGS_CPU ;
 int DRIVER_FLAGS_FINAL ;
 struct img_hash_request_ctx* ahash_request_ctx (TYPE_1__*) ;
 int img_hash_start (struct img_hash_dev*,int) ;
 int img_hash_xmit_cpu (struct img_hash_dev*,int ,int ,int) ;
 scalar_t__ sg_copy_to_buffer (int ,int ,int ,int ) ;
 int sg_nents (int ) ;

__attribute__((used)) static int img_hash_write_via_cpu(struct img_hash_dev *hdev)
{
 struct img_hash_request_ctx *ctx = ahash_request_ctx(hdev->req);

 ctx->bufcnt = sg_copy_to_buffer(hdev->req->src, sg_nents(ctx->sg),
     ctx->buffer, hdev->req->nbytes);

 ctx->total = hdev->req->nbytes;
 ctx->bufcnt = 0;

 hdev->flags |= (DRIVER_FLAGS_CPU | DRIVER_FLAGS_FINAL);

 img_hash_start(hdev, 0);

 return img_hash_xmit_cpu(hdev, ctx->buffer, ctx->total, 1);
}
