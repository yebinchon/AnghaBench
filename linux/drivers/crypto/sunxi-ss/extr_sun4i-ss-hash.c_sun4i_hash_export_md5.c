
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_req_ctx {int * hash; scalar_t__ byte_count; scalar_t__ len; int buf; } ;
struct md5_state {int * hash; int block; scalar_t__ byte_count; } ;
struct ahash_request {int dummy; } ;


 int SHA1_H0 ;
 int SHA1_H1 ;
 int SHA1_H2 ;
 int SHA1_H3 ;
 struct sun4i_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (int ,int ,scalar_t__) ;

int sun4i_hash_export_md5(struct ahash_request *areq, void *out)
{
 struct sun4i_req_ctx *op = ahash_request_ctx(areq);
 struct md5_state *octx = out;
 int i;

 octx->byte_count = op->byte_count + op->len;

 memcpy(octx->block, op->buf, op->len);

 if (op->byte_count) {
  for (i = 0; i < 4; i++)
   octx->hash[i] = op->hash[i];
 } else {
  octx->hash[0] = SHA1_H0;
  octx->hash[1] = SHA1_H1;
  octx->hash[2] = SHA1_H2;
  octx->hash[3] = SHA1_H3;
 }

 return 0;
}
