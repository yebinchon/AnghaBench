
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct img_hash_request_ctx {int flags; struct img_hash_dev* hdev; } ;
struct img_hash_dev {int flags; int dev; } ;
struct TYPE_2__ {int (* complete ) (TYPE_1__*,int) ;} ;
struct ahash_request {TYPE_1__ base; } ;


 int DRIVER_FLAGS_BUSY ;
 int DRIVER_FLAGS_CPU ;
 int DRIVER_FLAGS_DMA_READY ;
 int DRIVER_FLAGS_ERROR ;
 int DRIVER_FLAGS_FINAL ;
 int DRIVER_FLAGS_OUTPUT_READY ;
 struct img_hash_request_ctx* ahash_request_ctx (struct ahash_request*) ;
 int dev_warn (int ,char*,int) ;
 int img_hash_copy_hash (struct ahash_request*) ;
 int img_hash_finish (struct ahash_request*) ;
 int stub1 (TYPE_1__*,int) ;

__attribute__((used)) static void img_hash_finish_req(struct ahash_request *req, int err)
{
 struct img_hash_request_ctx *ctx = ahash_request_ctx(req);
 struct img_hash_dev *hdev = ctx->hdev;

 if (!err) {
  img_hash_copy_hash(req);
  if (DRIVER_FLAGS_FINAL & hdev->flags)
   err = img_hash_finish(req);
 } else {
  dev_warn(hdev->dev, "Hash failed with error %d\n", err);
  ctx->flags |= DRIVER_FLAGS_ERROR;
 }

 hdev->flags &= ~(DRIVER_FLAGS_DMA_READY | DRIVER_FLAGS_OUTPUT_READY |
  DRIVER_FLAGS_CPU | DRIVER_FLAGS_BUSY | DRIVER_FLAGS_FINAL);

 if (req->base.complete)
  req->base.complete(&req->base, err);
}
