
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_crypto_request {int sgs; int req_data; } ;


 int kfree (int ) ;
 int kzfree (int ) ;

void
virtcrypto_clear_request(struct virtio_crypto_request *vc_req)
{
 if (vc_req) {
  kzfree(vc_req->req_data);
  kfree(vc_req->sgs);
 }
}
