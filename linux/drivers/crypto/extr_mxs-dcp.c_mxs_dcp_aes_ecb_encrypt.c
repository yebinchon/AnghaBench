
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablkcipher_request {int dummy; } ;


 int mxs_dcp_aes_enqueue (struct ablkcipher_request*,int,int) ;

__attribute__((used)) static int mxs_dcp_aes_ecb_encrypt(struct ablkcipher_request *req)
{
 return mxs_dcp_aes_enqueue(req, 1, 1);
}
