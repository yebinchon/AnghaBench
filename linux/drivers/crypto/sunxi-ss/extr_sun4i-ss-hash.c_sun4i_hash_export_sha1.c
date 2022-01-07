
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_req_ctx {int * hash; scalar_t__ byte_count; scalar_t__ len; int buf; } ;
struct sha1_state {int * state; int buffer; scalar_t__ count; } ;
struct ahash_request {int dummy; } ;


 int SHA1_H0 ;
 int SHA1_H1 ;
 int SHA1_H2 ;
 int SHA1_H3 ;
 int SHA1_H4 ;
 struct sun4i_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (int ,int ,scalar_t__) ;

int sun4i_hash_export_sha1(struct ahash_request *areq, void *out)
{
 struct sun4i_req_ctx *op = ahash_request_ctx(areq);
 struct sha1_state *octx = out;
 int i;

 octx->count = op->byte_count + op->len;

 memcpy(octx->buffer, op->buf, op->len);

 if (op->byte_count) {
  for (i = 0; i < 5; i++)
   octx->state[i] = op->hash[i];
 } else {
  octx->state[0] = SHA1_H0;
  octx->state[1] = SHA1_H1;
  octx->state[2] = SHA1_H2;
  octx->state[3] = SHA1_H3;
  octx->state[4] = SHA1_H4;
 }

 return 0;
}
