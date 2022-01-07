
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nx842_driver {int workmem_size; } ;
struct nx842_crypto_ctx {int * dbounce; int * sbounce; int wmem; struct nx842_driver* driver; int lock; } ;
struct crypto_tfm {int dummy; } ;


 int BOUNCE_BUFFER_ORDER ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ __get_free_pages (int ,int ) ;
 struct nx842_crypto_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int free_page (unsigned long) ;
 int kfree (int ) ;
 int kmalloc (int ,int ) ;
 int spin_lock_init (int *) ;

int nx842_crypto_init(struct crypto_tfm *tfm, struct nx842_driver *driver)
{
 struct nx842_crypto_ctx *ctx = crypto_tfm_ctx(tfm);

 spin_lock_init(&ctx->lock);
 ctx->driver = driver;
 ctx->wmem = kmalloc(driver->workmem_size, GFP_KERNEL);
 ctx->sbounce = (u8 *)__get_free_pages(GFP_KERNEL, BOUNCE_BUFFER_ORDER);
 ctx->dbounce = (u8 *)__get_free_pages(GFP_KERNEL, BOUNCE_BUFFER_ORDER);
 if (!ctx->wmem || !ctx->sbounce || !ctx->dbounce) {
  kfree(ctx->wmem);
  free_page((unsigned long)ctx->sbounce);
  free_page((unsigned long)ctx->dbounce);
  return -ENOMEM;
 }

 return 0;
}
