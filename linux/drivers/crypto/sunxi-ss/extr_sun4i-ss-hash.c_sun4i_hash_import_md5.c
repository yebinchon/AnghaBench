
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_req_ctx {int byte_count; int len; int * hash; int buf; } ;
struct md5_state {int byte_count; int * hash; int block; } ;
struct ahash_request {int dummy; } ;


 struct sun4i_req_ctx* ahash_request_ctx (struct ahash_request*) ;
 int memcpy (int ,int ,int) ;
 int sun4i_hash_init (struct ahash_request*) ;

int sun4i_hash_import_md5(struct ahash_request *areq, const void *in)
{
 struct sun4i_req_ctx *op = ahash_request_ctx(areq);
 const struct md5_state *ictx = in;
 int i;

 sun4i_hash_init(areq);

 op->byte_count = ictx->byte_count & ~0x3F;
 op->len = ictx->byte_count & 0x3F;

 memcpy(op->buf, ictx->block, op->len);

 for (i = 0; i < 4; i++)
  op->hash[i] = ictx->hash[i];

 return 0;
}
