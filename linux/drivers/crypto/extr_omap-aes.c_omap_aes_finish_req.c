
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_aes_dev {int dev; int engine; struct ablkcipher_request* req; } ;
struct ablkcipher_request {int dummy; } ;


 int crypto_finalize_ablkcipher_request (int ,struct ablkcipher_request*,int) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static void omap_aes_finish_req(struct omap_aes_dev *dd, int err)
{
 struct ablkcipher_request *req = dd->req;

 pr_debug("err: %d\n", err);

 crypto_finalize_ablkcipher_request(dd->engine, req, err);

 pm_runtime_mark_last_busy(dd->dev);
 pm_runtime_put_autosuspend(dd->dev);
}
