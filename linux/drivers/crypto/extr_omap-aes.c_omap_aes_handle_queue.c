
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_aes_dev {int engine; } ;
struct ablkcipher_request {int dummy; } ;


 int crypto_transfer_ablkcipher_request_to_engine (int ,struct ablkcipher_request*) ;

__attribute__((used)) static int omap_aes_handle_queue(struct omap_aes_dev *dd,
     struct ablkcipher_request *req)
{
 if (req)
  return crypto_transfer_ablkcipher_request_to_engine(dd->engine, req);

 return 0;
}
