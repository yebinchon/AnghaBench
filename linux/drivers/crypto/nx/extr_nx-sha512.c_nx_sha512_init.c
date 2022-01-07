
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct sha512_state {scalar_t__* count; void** state; } ;


 int SHA512_H0 ;
 int SHA512_H1 ;
 int SHA512_H2 ;
 int SHA512_H3 ;
 int SHA512_H4 ;
 int SHA512_H5 ;
 int SHA512_H6 ;
 int SHA512_H7 ;
 void* __cpu_to_be64 (int ) ;
 int memset (struct sha512_state*,int ,int) ;
 struct sha512_state* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int nx_sha512_init(struct shash_desc *desc)
{
 struct sha512_state *sctx = shash_desc_ctx(desc);

 memset(sctx, 0, sizeof *sctx);

 sctx->state[0] = __cpu_to_be64(SHA512_H0);
 sctx->state[1] = __cpu_to_be64(SHA512_H1);
 sctx->state[2] = __cpu_to_be64(SHA512_H2);
 sctx->state[3] = __cpu_to_be64(SHA512_H3);
 sctx->state[4] = __cpu_to_be64(SHA512_H4);
 sctx->state[5] = __cpu_to_be64(SHA512_H5);
 sctx->state[6] = __cpu_to_be64(SHA512_H6);
 sctx->state[7] = __cpu_to_be64(SHA512_H7);
 sctx->count[0] = 0;

 return 0;
}
