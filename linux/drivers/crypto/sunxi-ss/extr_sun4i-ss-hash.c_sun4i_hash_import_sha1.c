
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_req_ctx {int byte_count; int len; int * hash; int buf; } ;
struct sha1_state {int count; int * state; int buffer; } ;
struct ahash_request {int dummy; } ;


 struct sun4i_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (int ,int ,int) ;
 int sun4i_hash_init (struct ahash_request*) ;

int sun4i_hash_import_sha1(struct ahash_request *areq, const void *in)
{
 struct sun4i_req_ctx *op = ahash_request_ctx(areq);
 const struct sha1_state *ictx = in;
 int i;

 sun4i_hash_init(areq);

 op->byte_count = ictx->count & ~0x3F;
 op->len = ictx->count & 0x3F;

 memcpy(op->buf, ictx->buffer, op->len);

 for (i = 0; i < 5; i++)
  op->hash[i] = ictx->state[i];

 return 0;
}
