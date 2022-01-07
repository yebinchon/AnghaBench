
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_hash_request_ctx {int flags; } ;
struct img_hash_dev {int dev; int req; } ;


 int CR_CONTROL ;
 int CR_CONTROL_ALGO_MD5 ;
 int CR_CONTROL_ALGO_SHA1 ;
 int CR_CONTROL_ALGO_SHA224 ;
 int CR_CONTROL_ALGO_SHA256 ;
 int CR_CONTROL_BYTE_ORDER_SHIFT ;
 int DRIVER_FLAGS_MD5 ;
 int DRIVER_FLAGS_SHA1 ;
 int DRIVER_FLAGS_SHA224 ;
 int DRIVER_FLAGS_SHA256 ;
 int IMG_HASH_BYTE_ORDER ;
 struct img_hash_request_ctx* ahash_request_ctx (int ) ;
 int dev_dbg (int ,char*) ;
 int img_hash_read (struct img_hash_dev*,int ) ;
 int img_hash_write (struct img_hash_dev*,int ,int) ;

__attribute__((used)) static void img_hash_start(struct img_hash_dev *hdev, bool dma)
{
 struct img_hash_request_ctx *ctx = ahash_request_ctx(hdev->req);
 u32 cr = IMG_HASH_BYTE_ORDER << CR_CONTROL_BYTE_ORDER_SHIFT;

 if (ctx->flags & DRIVER_FLAGS_MD5)
  cr |= CR_CONTROL_ALGO_MD5;
 else if (ctx->flags & DRIVER_FLAGS_SHA1)
  cr |= CR_CONTROL_ALGO_SHA1;
 else if (ctx->flags & DRIVER_FLAGS_SHA224)
  cr |= CR_CONTROL_ALGO_SHA224;
 else if (ctx->flags & DRIVER_FLAGS_SHA256)
  cr |= CR_CONTROL_ALGO_SHA256;
 dev_dbg(hdev->dev, "Starting hash process\n");
 img_hash_write(hdev, CR_CONTROL, cr);







 if (!dma)
  img_hash_read(hdev, CR_CONTROL);
}
